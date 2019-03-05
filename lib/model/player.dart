import 'package:json_annotation/json_annotation.dart'; 
  
part 'player.g.dart';


@JsonSerializable()
  class Player extends Object {

  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'trophies')
  int trophies;

  @JsonKey(name: 'rank')
  int rank;

  Player(this.tag,this.name,this.trophies,this.rank,);

  factory Player.fromJson(Map<String, dynamic> srcJson) => _$PlayerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  Player.empty();
}

  
