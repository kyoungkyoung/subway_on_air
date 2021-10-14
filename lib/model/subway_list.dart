import 'package:json_annotation/json_annotation.dart';
import 'package:subway_on_air/model/realtime_arrival_list.dart';

part 'subway_list.g.dart';

@JsonSerializable(explicitToJson: true)
class SubwayList {
  RealtimeArrivalList realtimeArrivalList;

  SubwayList(this.realtimeArrivalList);

  factory SubwayList.fromJson(Map<String, dynamic> json) =>
      _$SubwayListFromJson(json);

  Map<String, dynamic> toJson() => _$SubwayListToJson(this);
}
