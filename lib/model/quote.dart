import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote extends Object {
  @JsonKey(name: 'ID')
  int id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'link')
  String link;

  @JsonKey(name: 'custom_meta')
  Custom_meta customMeta;

  Quote(
    this.id,
    this.title,
    this.content,
    this.link,
    this.customMeta,
  );

  factory Quote.fromJson(Map<String, dynamic> srcJson) =>
      _$QuoteFromJson(srcJson);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);
}

@JsonSerializable()
class Custom_meta extends Object {
  @JsonKey(name: 'Source')
  String source;

  Custom_meta(
    this.source,
  );

  factory Custom_meta.fromJson(Map<String, dynamic> srcJson) =>
      _$Custom_metaFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Custom_metaToJson(this);
}
