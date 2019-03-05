// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(json['tag'] as String, json['name'] as String,
      json['trophies'] as int, json['rank'] as int);
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'trophies': instance.trophies,
      'rank': instance.rank
    };
