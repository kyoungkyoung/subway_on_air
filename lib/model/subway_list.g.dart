// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subway_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubwayList _$SubwayListFromJson(Map<String, dynamic> json) => SubwayList(
      RealtimeArrivalList.fromJson(
          json['realtimeArrivalList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubwayListToJson(SubwayList instance) =>
    <String, dynamic>{
      'realtimeArrivalList': instance.realtimeArrivalList.toJson(),
    };
