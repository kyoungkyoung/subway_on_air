import 'package:flutter/material.dart';
import 'package:subway_on_air/model/realtime_arrival_list.dart';
import 'package:subway_on_air/model/subway_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SubwayOnAir extends StatefulWidget {
  const SubwayOnAir({Key? key}) : super(key: key);

  @override
  _SubwayOnAirState createState() => _SubwayOnAirState();
}

class _SubwayOnAirState extends State<SubwayOnAir> {
  final _formKey = GlobalKey<FormState>();
  final _subwayController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    super.dispose();
    _subwayController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('실시간 지하철 정보'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text('역 이름'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          controller: _subwayController,
                          validator: (value) {
                            if (value == null) {
                              value = '';
                            } else if (value.trim().isEmpty) {
                              return '검색할 역을 입력하세요';
                            }
                            // return null;
                          },
                          onChanged: (query) {
                            setState(() {
                              _query = query;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        fetchList();
                      }
                    },
                    child: const Text('조회'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('도착 정보'),
            ),
            FutureBuilder<List<RealtimeArrivalList>>(
              future: fetchList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Text('데이터가 없습니다.');
                } else if (!snapshot.hasData) {
                  return const Text('데이터가 없습니다.');
                } else {
                  List<RealtimeArrivalList> list = snapshot.data!;
                  return GridView.count(
                    padding: const EdgeInsets.all(8.0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    children: list.map((e) {
                      return Card(
                        child: ListTile(
                          title: Text(e.trainLineNm),

                        ),
                      );
                    }).toList(),
                  );
                }
              },
            ),
          ],
        ));
  }

  Future<List<RealtimeArrivalList>> fetchList() async {
    String url =
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/' +
            _query;
    final response = await http.get(Uri.parse(url));

    Map<String, dynamic> subwayList = jsonDecode(response.body);
    var realtimeArrivalList = jsonEncode(subwayList['realtimeArrivalList']);

    // Iterable jsonResponse = jsonDecode(realtimeArrivalList);
    Iterable jsonResponse = subwayList['realtimeArrivalList'];

    List<RealtimeArrivalList> list =
        jsonResponse.map((e) => RealtimeArrivalList.fromJson(e)).toList();

    return list;
  }
}
