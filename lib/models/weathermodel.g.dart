// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weathermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return WeatherData(
      latitude: (json['latitude'] as num)?.toDouble(),
      logitude: (json['logitude'] as num)?.toDouble(),
      timezone: json['timezone'] as String,
      currently: json['currently'] == null
          ? null
          : Current.fromJson(json['currently'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : TimedWeather.fromJson(json['hourly'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : TimedWeather.fromJson(json['daily'] as Map<String, dynamic>));
}

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'logitude': instance.logitude,
      'timezone': instance.timezone,
      'currently': instance.currently,
      'hourly': instance.hourly,
      'daily': instance.daily
    };

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
