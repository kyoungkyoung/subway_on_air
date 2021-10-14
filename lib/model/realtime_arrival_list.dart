import 'package:json_annotation/json_annotation.dart';

part 'realtime_arrival_list.g.dart';

@JsonSerializable()
class RealtimeArrivalList {
  String trainLineNm; //도착지방면 (성수행 - 구로디지털단지방면)
  String arvlMsg2; // 열차도착예정시간 "4분 45초 후",
  String arvlMsg3;

  RealtimeArrivalList(this.trainLineNm, this.arvlMsg2, this.arvlMsg3); //"구의",

  factory RealtimeArrivalList.fromJson(Map<String, dynamic> json) =>
      _$RealtimeArrivalListFromJson(json);

  Map<String, dynamic> toJson() => _$RealtimeArrivalListToJson(this);
}
