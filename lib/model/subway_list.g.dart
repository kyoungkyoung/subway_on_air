// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subway_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubwayList _$SubwayListFromJson(Map<String, dynamic> json) => SubwayList(
      json['trainLineNm'] as String,
      json['arvlMsg2'] as String,
      json['arvlMsg3'] as String,
    );

Map<String, dynamic> _$SubwayListToJson(SubwayList instance) =>
    <String, dynamic>{
      'trainLineNm': instance.trainLineNm,
      'arvlMsg2': instance.arvlMsg2,
      'arvlMsg3': instance.arvlMsg3,
    };
