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
      rank: json['rank'] as int,
      arena: json['arena'] == null
          ? null
          : Arena.fromJson(json['arena'] as Map<String, dynamic>),
      clan: json['clan'] == null
          ? null
          : Clan.fromJson(json['clan'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      games: json['games'] == null
          ? null
          : Games.fromJson(json['games'] as Map<String, dynamic>),
      leagueStatistics: json['leagueStatistics'] == null
          ? null
          : LeagueStatistics.fromJson(
              json['leagueStatistics'] as Map<String, dynamic>),
      deckLink: json['deckLink'] as String,
      currentDeck: (json['currentDeck'] as List)
          ?.map((e) => e == null
              ? null
              : CurrentDeck.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      cards: (json['cards'] as List)
          ?.map((e) =>
              e == null ? null : Cards.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      achievements: (json['achievements'] as List)
          ?.map((e) => e == null
              ? null
              : Achievements.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'trophies': instance.trophies,
      'rank': instance.rank,
      'arena': instance.arena,
      'clan': instance.clan,
      'stats': instance.stats,
      'games': instance.games,
      'leagueStatistics': instance.leagueStatistics,
      'deckLink': instance.deckLink,
      'currentDeck': instance.currentDeck,
      'cards': instance.cards,
      'achievements': instance.achievements
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

Clan _$ClanFromJson(Map<String, dynamic> json) {
  return Clan(
      json['tag'] as String,
      json['name'] as String,
      json['role'] as String,
      json['donations'] as int,
      json['donationsReceived'] as int,
      json['donationsDelta'] as int,
      json['badge'] == null
          ? null
          : Badge.fromJson(json['badge'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ClanToJson(Clan instance) => <String, dynamic>{
      'tag': instance.tag,
      'name': instance.name,
      'role': instance.role,
      'donations': instance.donations,
      'donationsReceived': instance.donationsReceived,
      'donationsDelta': instance.donationsDelta,
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

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
      json['clanCardsCollected'] as int,
      json['tournamentCardsWon'] as int,
      json['maxTrophies'] as int,
      json['threeCrownWins'] as int,
      json['cardsFound'] as int,
      json['favoriteCard'] == null
          ? null
          : FavoriteCard.fromJson(json['favoriteCard'] as Map<String, dynamic>),
      json['totalDonations'] as int,
      json['challengeMaxWins'] as int,
      json['challengeCardsWon'] as int,
      json['level'] as int);
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'clanCardsCollected': instance.clanCardsCollected,
      'tournamentCardsWon': instance.tournamentCardsWon,
      'maxTrophies': instance.maxTrophies,
      'threeCrownWins': instance.threeCrownWins,
      'cardsFound': instance.cardsFound,
      'favoriteCard': instance.favoriteCard,
      'totalDonations': instance.totalDonations,
      'challengeMaxWins': instance.challengeMaxWins,
      'challengeCardsWon': instance.challengeCardsWon,
      'level': instance.level
    };

FavoriteCard _$FavoriteCardFromJson(Map<String, dynamic> json) {
  return FavoriteCard(
      json['name'] as String,
      json['id'] as int,
      json['maxLevel'] as int,
      json['icon'] as String,
      json['key'] as String,
      json['elixir'] as int,
      json['type'] as String,
      json['rarity'] as String,
      json['arena'] as int,
      json['description'] as String);
}

Map<String, dynamic> _$FavoriteCardToJson(FavoriteCard instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'maxLevel': instance.maxLevel,
      'icon': instance.icon,
      'key': instance.key,
      'elixir': instance.elixir,
      'type': instance.type,
      'rarity': instance.rarity,
      'arena': instance.arena,
      'description': instance.description
    };

Games _$GamesFromJson(Map<String, dynamic> json) {
  return Games(
      json['total'] as int,
      json['tournamentGames'] as int,
      json['wins'] as int,
      json['warDayWins'] as int,
      (json['winsPercent'] as num)?.toDouble(),
      json['losses'] as int,
      (json['lossesPercent'] as num)?.toDouble(),
      json['draws'] as int,
      (json['drawsPercent'] as num)?.toDouble());
}

Map<String, dynamic> _$GamesToJson(Games instance) => <String, dynamic>{
      'total': instance.total,
      'tournamentGames': instance.tournamentGames,
      'wins': instance.wins,
      'warDayWins': instance.warDayWins,
      'winsPercent': instance.winsPercent,
      'losses': instance.losses,
      'lossesPercent': instance.lossesPercent,
      'draws': instance.draws,
      'drawsPercent': instance.drawsPercent
    };

LeagueStatistics _$LeagueStatisticsFromJson(Map<String, dynamic> json) {
  return LeagueStatistics(
      json['currentSeason'] == null
          ? null
          : CurrentSeason.fromJson(
              json['currentSeason'] as Map<String, dynamic>),
      json['previousSeason'] == null
          ? null
          : PreviousSeason.fromJson(
              json['previousSeason'] as Map<String, dynamic>),
      json['bestSeason'] == null
          ? null
          : BestSeason.fromJson(json['bestSeason'] as Map<String, dynamic>));
}

Map<String, dynamic> _$LeagueStatisticsToJson(LeagueStatistics instance) =>
    <String, dynamic>{
      'currentSeason': instance.currentSeason,
      'previousSeason': instance.previousSeason,
      'bestSeason': instance.bestSeason
    };

CurrentSeason _$CurrentSeasonFromJson(Map<String, dynamic> json) {
  return CurrentSeason(json['rank'] as int, json['trophies'] as int,
      json['bestTrophies'] as int);
}

Map<String, dynamic> _$CurrentSeasonToJson(CurrentSeason instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'trophies': instance.trophies,
      'bestTrophies': instance.bestTrophies
    };

PreviousSeason _$PreviousSeasonFromJson(Map<String, dynamic> json) {
  return PreviousSeason(json['id'] as String, json['rank'] as int,
      json['trophies'] as int, json['bestTrophies'] as int);
}

Map<String, dynamic> _$PreviousSeasonToJson(PreviousSeason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'trophies': instance.trophies,
      'bestTrophies': instance.bestTrophies
    };

BestSeason _$BestSeasonFromJson(Map<String, dynamic> json) {
  return BestSeason(
      json['id'] as String, json['rank'] as int, json['trophies'] as int);
}

Map<String, dynamic> _$BestSeasonToJson(BestSeason instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'trophies': instance.trophies
    };

CurrentDeck _$CurrentDeckFromJson(Map<String, dynamic> json) {
  return CurrentDeck(
      json['name'] as String,
      json['level'] as int,
      json['maxLevel'] as int,
      json['count'] as int,
      json['rarity'] as String,
      json['requiredForUpgrade'],
      json['icon'] as String,
      json['key'] as String,
      json['elixir'] as int,
      json['type'] as String,
      json['arena'] as int,
      json['description'] as String,
      json['id'] as int);
}

Map<String, dynamic> _$CurrentDeckToJson(CurrentDeck instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'maxLevel': instance.maxLevel,
      'count': instance.count,
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

Cards _$CardsFromJson(Map<String, dynamic> json) {
  return Cards(
      json['name'] as String,
      json['level'] as int,
      json['maxLevel'] as int,
      json['count'] as int,
      json['rarity'] as String,
      json['requiredForUpgrade'],
      json['icon'] as String,
      json['key'] as String,
      json['elixir'] as int,
      json['type'] as String,
      json['arena'] as int,
      json['description'] as String,
      json['id'] as int);
}

Map<String, dynamic> _$CardsToJson(Cards instance) => <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'maxLevel': instance.maxLevel,
      'count': instance.count,
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

Achievements _$AchievementsFromJson(Map<String, dynamic> json) {
  return Achievements(json['name'] as String, json['stars'] as int,
      json['value'] as int, json['target'] as int, json['info'] as String);
}

Map<String, dynamic> _$AchievementsToJson(Achievements instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stars': instance.stars,
      'value': instance.value,
      'target': instance.target,
      'info': instance.info
    };
