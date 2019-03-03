// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return Quote(
      json['ID'] as int,
      json['title'] as String,
      json['content'] as String,
      json['link'] as String,
      json['custom_meta'] == null
          ? null
          : Custom_meta.fromJson(json['custom_meta'] as Map<String, dynamic>));
}

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      'ID': instance.id,
      'title': instance.title,
      'content': instance.content,
      'link': instance.link,
      'custom_meta': instance.customMeta
    };

Custom_meta _$Custom_metaFromJson(Map<String, dynamic> json) {
  return Custom_meta(json['Source'] as String);
}

Map<String, dynamic> _$Custom_metaToJson(Custom_meta instance) =>
    <String, dynamic>{'Source': instance.source};
