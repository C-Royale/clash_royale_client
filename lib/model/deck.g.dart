// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deck _$DeckFromJson(Map<String, dynamic> json) {
  return Deck(
      (json['cards'] as List)
          ?.map((e) =>
              e == null ? null : Cards.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['decklink'] as String,
      json['popularity'] as int);
}

Map<String, dynamic> _$DeckToJson(Deck instance) => <String, dynamic>{
      'cards': instance.cards,
      'decklink': instance.decklink,
      'popularity': instance.popularity
    };

Cards _$CardsFromJson(Map<String, dynamic> json) {
  return Cards(
      json['arena'] as int,
      json['description'] as String,
      json['elixir'] as int,
      json['icon'] as String,
      json['id'] as int,
      json['key'] as String,
      json['minLevel'] as int,
      json['maxLevel'] as int,
      json['name'] as String,
      json['rarity'] as String,
      json['type'] as String);
}

Map<String, dynamic> _$CardsToJson(Cards instance) => <String, dynamic>{
      'arena': instance.arena,
      'description': instance.description,
      'elixir': instance.elixir,
      'icon': instance.icon,
      'id': instance.id,
      'key': instance.key,
      'minLevel': instance.minLevel,
      'maxLevel': instance.maxLevel,
      'name': instance.name,
      'rarity': instance.rarity,
      'type': instance.type
    };
