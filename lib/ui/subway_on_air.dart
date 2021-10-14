import 'package:flutter/material.dart';

class SubwayOnAir extends StatefulWidget {
  const SubwayOnAir({Key? key}) : super(key: key);

  @override
  _SubwayOnAirState createState() => _SubwayOnAirState();
}

class _SubwayOnAirState extends State<SubwayOnAir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('실시간 지하철 정보'),
      ),

    );
  }
}
