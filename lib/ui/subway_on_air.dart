import 'package:flutter/material.dart';

class SubwayOnAir extends StatefulWidget {
  const SubwayOnAir({Key? key}) : super(key: key);

  @override
  _SubwayOnAirState createState() => _SubwayOnAirState();
}

class _SubwayOnAirState extends State<SubwayOnAir> {
  final _formKey = GlobalKey<FormState>();
  final _subwayController = TextEditingController();

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
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('조회'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('도착 정보'),
            ),
            GridView.count(
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                Card(
                  child: ListTile(),
                ),
                Card(
                  child: ListTile(),
                ),
                Card(
                  child: ListTile(),
                ),
                Card(
                  child: ListTile(),
                ),
              ],
            ),
          ],
        ));
  }
}
