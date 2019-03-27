import 'package:json_annotation/json_annotation.dart';

part 'deck.g.dart';

@JsonSerializable()
class Deck extends Object {
  @JsonKey(name: 'cards')
  List<Cards> cards;

  @JsonKey(name: 'decklink')
  String decklink;

  @JsonKey(name: 'popularity')
  int popularity;

  Deck(
    this.cards,
    this.decklink,
    this.popularity,
  );

  factory Deck.fromJson(Map<String, dynamic> srcJson) =>
      _$DeckFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DeckToJson(this);
}

@JsonSerializable()
class Cards extends Object {
  @JsonKey(name: 'arena')
  int arena;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'elixir')
  int elixir;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'key')
  String key;

  @JsonKey(name: 'minLevel')
  int minLevel;

  @JsonKey(name: 'maxLevel')
  int maxLevel;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'rarity')
  String rarity;

  @JsonKey(name: 'type')
  String type;

  Cards(
    this.arena,
    this.description,
    this.elixir,
    this.icon,
    this.id,
    this.key,
    this.minLevel,
    this.maxLevel,
    this.name,
    this.rarity,
    this.type,
  );

  factory Cards.fromJson(Map<String, dynamic> srcJson) =>
      _$CardsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CardsToJson(this);
}
