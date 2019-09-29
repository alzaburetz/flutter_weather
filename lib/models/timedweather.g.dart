// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timedweather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimedWeather _$TimedWeatherFromJson(Map<String, dynamic> json) {
  return TimedWeather(
      summary: json['summary'] as String,
      icon: json['icon'] as String,
      data: (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Current.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TimedWeatherToJson(TimedWeather instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'icon': instance.icon,
      'data': instance.data
    };
