// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime_arrival_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RealtimeArrivalList _$RealtimeArrivalListFromJson(Map<String, dynamic> json) =>
    RealtimeArrivalList(
      json['trainLineNm'] as String,
      json['arvlMsg2'] as String,
      json['arvlMsg3'] as String,
    );

Map<String, dynamic> _$RealtimeArrivalListToJson(
        RealtimeArrivalList instance) =>
    <String, dynamic>{
      'trainLineNm': instance.trainLineNm,
      'arvlMsg2': instance.arvlMsg2,
      'arvlMsg3': instance.arvlMsg3,
    };
