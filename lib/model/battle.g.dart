// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Battle _$BattleFromJson(Map<String, dynamic> json) {
  return Battle(
      json['type'] as String,
      json['challengeType'] as String,
      json['mode'] == null
          ? null
          : Mode.fromJson(json['mode'] as Map<String, dynamic>),
      json['utcTime'] as int,
      json['deckType'] as String,
      json['teamSize'] as int,
      json['winner'] as int,
      json['teamCrowns'] as int,
      json['opponentCrowns'] as int,
      (json['team'] as List)
          ?.map((e) =>
              e == null ? null : Team.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['opponent'] as List)
          ?.map((e) =>
              e == null ? null : Opponent.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['arena'] == null
          ? null
          : Arena.fromJson(json['arena'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BattleToJson(Battle instance) => <String, dynamic>{
      'type': instance.type,
      'challengeType': instance.challengeType,
      'mode': instance.mode,
      'utcTime': instance.utcTime,
      'deckType': instance.deckType,
      'teamSize': instance.teamSize,
      'winner': instance.winner,
      'teamCrowns': instance.teamCrowns,
      'opponentCrowns': instance.opponentCrowns,
      'team': instance.team,
      'opponent': instance.opponent,
      'arena': instance.arena
    };

Mode _$ModeFromJson(Map<String, dynamic> json) {
  return Mode(
      json['name'] as String,
      json['deck'] as String,
      json['cardLevels'] as String,
      json['overtimeSeconds'] as int,
      json['players'] as String,
      json['sameDeck'] as bool);
}

Map<String, dynamic> _$ModeToJson(Mode instance) => <String, dynamic>{
      'name': instance.name,
      'deck': instance.deck,
      'cardLevels': instance.cardLevels,
      'overtimeSeconds': instance.overtimeSeconds,
      'players': instance.players,
      'sameDeck': instance.sameDeck
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team(
      json['tag'] as String,
      json['name'] as String,
      json['crownsEarned'] as int,
      json['startTrophies'] as int,
      json['clan'] == null
          ? null
          : Clan.fromJson(json['clan'] as Map<String, dynamic>),
      json['deckLink'] as String,
      (json['deck'] as List)
          ?.map((e) =>
              e == null ? null : Deck.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'crownsEarned': instance.crownsEarned,
      'startTrophies': instance.startTrophies,
      'clan': instance.clan,
      'deckLink': instance.deckLink,
      'deck': instance.deck
    };

Clan _$ClanFromJson(Map<String, dynamic> json) {
  return Clan(
      json['tag'] as String,
      json['name'] as String,
      json['badge'] == null
          ? null
          : Badge.fromJson(json['badge'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ClanToJson(Clan instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'badge': instance.badge
    };

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return Badge(json['name'] as String, json['category'] as String,
      json['id'] as int, json['image'] as String);
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'id': instance.id,
      'image': instance.image
    };

Deck _$DeckFromJson(Map<String, dynamic> json) {
  return Deck(
      json['name'] as String,
      json['level'] as int,
      json['maxLevel'] as int,
      json['rarity'] as String,
      json['requiredForUpgrade'] as int,
      json['icon'] as String,
      json['key'] as String,
      json['elixir'] as int,
      json['type'] as String,
      json['arena'] as int,
      json['description'] as String,
      json['id'] as int);
}

Map<String, dynamic> _$DeckToJson(Deck instance) => <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'maxLevel': instance.maxLevel,
      'rarity': instance.rarity,
      'requiredForUpgrade': instance.requiredForUpgrade,
      'icon': instance.icon,
      'key': instance.key,
      'elixir': instance.elixir,
      'type': instance.type,
      'arena': instance.arena,
      'description': instance.description,
      'id': instance.id
    };

Opponent _$OpponentFromJson(Map<String, dynamic> json) {
  return Opponent(
      json['tag'] as String,
      json['name'] as String,
      json['crownsEarned'] as int,
      json['startTrophies'] as int,
      json['clan'] == null
          ? null
          : Clan.fromJson(json['clan'] as Map<String, dynamic>),
      json['deckLink'] as String,
      (json['deck'] as List)
          ?.map((e) =>
              e == null ? null : Deck.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OpponentToJson(Opponent instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'crownsEarned': instance.crownsEarned,
      'startTrophies': instance.startTrophies,
      'clan': instance.clan,
      'deckLink': instance.deckLink,
      'deck': instance.deck
    };

Arena _$ArenaFromJson(Map<String, dynamic> json) {
  return Arena(json['name'] as String, json['arena'] as String,
      json['arenaID'] as int, json['trophyLimit'] as int);
}

Map<String, dynamic> _$ArenaToJson(Arena instance) => <String, dynamic>{
      'name': instance.name,
      'arena': instance.arena,
      'arenaID': instance.arenaID,
      'trophyLimit': instance.trophyLimit
    };
