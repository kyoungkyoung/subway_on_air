import 'package:json_annotation/json_annotation.dart';

part 'subway_list.g.dart';

@JsonSerializable()
class SubwayList {
  String trainLineNm; //도착지방면 (성수행 - 구로디지털단지방면)
  String arvlMsg2; // 열차도착예정시간 "4분 45초 후",
  String arvlMsg3; //"구의",

  SubwayList(this.trainLineNm, this.arvlMsg2, this.arvlMsg3);



  factory SubwayList.fromJson(Map<String, dynamic> json) =>
      _$SubwayListFromJson(json);

  Map<String, dynamic> toJson() => _$SubwayListToJson(this);
}
