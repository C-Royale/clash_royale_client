// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
      tag: json['tag'] as String,
      name: json['name'] as String,
      trophies: json['trophies'] as int,
      rank: json['rank'] as int);
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'trophies': instance.trophies,
      'rank': instance.rank
    };
