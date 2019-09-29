// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current(
      summary: json['summary'] as String,
      time: json['time'],
      icon: json['icon'] as String,
      nearestStormBearing: (json['nearestStormBearing'] as num)?.toDouble(),
      nearestStormDistance: (json['nearestStormDistance'] as num)?.toDouble(),
      precipIntensity: (json['precipIntensity'] as num)?.toDouble(),
      temperature: (json['temperature'] as num)?.toDouble(),
      apparentTemperature: (json['apparentTemperature'] as num)?.toDouble(),
      dewPoint: (json['dewPoint'] as num)?.toDouble(),
      humidity: (json['humidity'] as num)?.toDouble(),
      pressure: (json['pressure'] as num)?.toDouble(),
      windSpeed: (json['windSpeed'] as num)?.toDouble(),
      windGust: (json['windGust'] as num)?.toDouble(),
      windBearing: (json['windBearing'] as num)?.toDouble(),
      ozone: (json['ozone'] as num)?.toDouble(),
      clodCover: (json['clodCover'] as num)?.toDouble(),
      uvIndex: (json['uvIndex'] as num)?.toDouble(),
      visibility: (json['visibility'] as num)?.toDouble());
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'time': instance.time,
      'summary': instance.summary,
      'icon': instance.icon,
      'nearestStormDistance': instance.nearestStormDistance,
      'nearestStormBearing': instance.nearestStormBearing,
      'precipIntensity': instance.precipIntensity,
      'temperature': instance.temperature,
      'apparentTemperature': instance.apparentTemperature,
      'dewPoint': instance.dewPoint,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'windSpeed': instance.windSpeed,
      'windGust': instance.windGust,
      'windBearing': instance.windBearing,
      'clodCover': instance.clodCover,
      'uvIndex': instance.uvIndex,
      'visibility': instance.visibility,
      'ozone': instance.ozone
    };
