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

  @JsonKey(name: 'arena')
  Arena arena;

  @JsonKey(name: 'clan')
  Clan clan;

  @JsonKey(name: 'stats')
  Stats stats;

  @JsonKey(name: 'games')
  Games games;

  @JsonKey(name: 'leagueStatistics')
  LeagueStatistics leagueStatistics;

  @JsonKey(name: 'deckLink')
  String deckLink;

  @JsonKey(name: 'currentDeck')
  List<CurrentDeck> currentDeck;

  @JsonKey(name: 'cards')
  List<Cards> cards;

  @JsonKey(name: 'achievements')
  List<Achievements> achievements;

  Player(
      {this.tag,
      this.name,
      this.trophies,
      this.rank,
      this.arena,
      this.clan,
      this.stats,
      this.games,
      this.leagueStatistics,
      this.deckLink,
      this.currentDeck,
      this.cards,
      this.achievements});

  factory Player.fromJson(Map<String, dynamic> srcJson) =>
      _$PlayerFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);

  Player.empty();
}

@JsonSerializable()
class Arena extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'arena')
  String arena;

  @JsonKey(name: 'arenaID')
  int arenaID;

  @JsonKey(name: 'trophyLimit')
  int trophyLimit;

  Arena(
    this.name,
    this.arena,
    this.arenaID,
    this.trophyLimit,
  );

  factory Arena.fromJson(Map<String, dynamic> srcJson) =>
      _$ArenaFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ArenaToJson(this);
}

@JsonSerializable()
class Clan extends Object {
  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'role')
  String role;

  @JsonKey(name: 'donations')
  int donations;

  @JsonKey(name: 'donationsReceived')
  int donationsReceived;

  @JsonKey(name: 'donationsDelta')
  int donationsDelta;

  @JsonKey(name: 'badge')
  Badge badge;

  Clan(
    this.tag,
    this.name,
    this.role,
    this.donations,
    this.donationsReceived,
    this.donationsDelta,
    this.badge,
  );

  factory Clan.fromJson(Map<String, dynamic> srcJson) =>
      _$ClanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ClanToJson(this);
}

@JsonSerializable()
class Badge extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'category')
  String category;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'image')
  String image;

  Badge(
    this.name,
    this.category,
    this.id,
    this.image,
  );

  factory Badge.fromJson(Map<String, dynamic> srcJson) =>
      _$BadgeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}

@JsonSerializable()
class Stats extends Object {
  @JsonKey(name: 'clanCardsCollected')
  int clanCardsCollected;

  @JsonKey(name: 'tournamentCardsWon')
  int tournamentCardsWon;

  @JsonKey(name: 'maxTrophies')
  int maxTrophies;

  @JsonKey(name: 'threeCrownWins')
  int threeCrownWins;

  @JsonKey(name: 'cardsFound')
  int cardsFound;

  @JsonKey(name: 'favoriteCard')
  FavoriteCard favoriteCard;

  @JsonKey(name: 'totalDonations')
  int totalDonations;

  @JsonKey(name: 'challengeMaxWins')
  int challengeMaxWins;

  @JsonKey(name: 'challengeCardsWon')
  int challengeCardsWon;

  @JsonKey(name: 'level')
  int level;

  Stats(
    this.clanCardsCollected,
    this.tournamentCardsWon,
    this.maxTrophies,
    this.threeCrownWins,
    this.cardsFound,
    this.favoriteCard,
    this.totalDonations,
    this.challengeMaxWins,
    this.challengeCardsWon,
    this.level,
  );

  factory Stats.fromJson(Map<String, dynamic> srcJson) =>
      _$StatsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class FavoriteCard extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'maxLevel')
  int maxLevel;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'key')
  String key;

  @JsonKey(name: 'elixir')
  int elixir;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'rarity')
  String rarity;

  @JsonKey(name: 'arena')
  int arena;

  @JsonKey(name: 'description')
  String description;

  FavoriteCard(
    this.name,
    this.id,
    this.maxLevel,
    this.icon,
    this.key,
    this.elixir,
    this.type,
    this.rarity,
    this.arena,
    this.description,
  );

  factory FavoriteCard.fromJson(Map<String, dynamic> srcJson) =>
      _$FavoriteCardFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FavoriteCardToJson(this);
}

@JsonSerializable()
class Games extends Object {
  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'tournamentGames')
  int tournamentGames;

  @JsonKey(name: 'wins')
  int wins;

  @JsonKey(name: 'warDayWins')
  int warDayWins;

  @JsonKey(name: 'winsPercent')
  double winsPercent;

  @JsonKey(name: 'losses')
  int losses;

  @JsonKey(name: 'lossesPercent')
  double lossesPercent;

  @JsonKey(name: 'draws')
  int draws;

  @JsonKey(name: 'drawsPercent')
  double drawsPercent;

  Games(
    this.total,
    this.tournamentGames,
    this.wins,
    this.warDayWins,
    this.winsPercent,
    this.losses,
    this.lossesPercent,
    this.draws,
    this.drawsPercent,
  );

  factory Games.fromJson(Map<String, dynamic> srcJson) =>
      _$GamesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GamesToJson(this);
}

@JsonSerializable()
class LeagueStatistics extends Object {
  @JsonKey(name: 'currentSeason')
  CurrentSeason currentSeason;

  @JsonKey(name: 'previousSeason')
  PreviousSeason previousSeason;

  @JsonKey(name: 'bestSeason')
  BestSeason bestSeason;

  LeagueStatistics(
    this.currentSeason,
    this.previousSeason,
    this.bestSeason,
  );

  factory LeagueStatistics.fromJson(Map<String, dynamic> srcJson) =>
      _$LeagueStatisticsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LeagueStatisticsToJson(this);
}

@JsonSerializable()
class CurrentSeason extends Object {
  @JsonKey(name: 'rank')
  int rank;

  @JsonKey(name: 'trophies')
  int trophies;

  @JsonKey(name: 'bestTrophies')
  int bestTrophies;

  CurrentSeason(
    this.rank,
    this.trophies,
    this.bestTrophies,
  );

  factory CurrentSeason.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentSeasonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CurrentSeasonToJson(this);
}

@JsonSerializable()
class PreviousSeason extends Object {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'rank')
  int rank;

  @JsonKey(name: 'trophies')
  int trophies;

  @JsonKey(name: 'bestTrophies')
  int bestTrophies;

  PreviousSeason(
    this.id,
    this.rank,
    this.trophies,
    this.bestTrophies,
  );

  factory PreviousSeason.fromJson(Map<String, dynamic> srcJson) =>
      _$PreviousSeasonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PreviousSeasonToJson(this);
}

@JsonSerializable()
class BestSeason extends Object {
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'rank')
  int rank;

  @JsonKey(name: 'trophies')
  int trophies;

  BestSeason(
    this.id,
    this.rank,
    this.trophies,
  );

  factory BestSeason.fromJson(Map<String, dynamic> srcJson) =>
      _$BestSeasonFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BestSeasonToJson(this);
}

@JsonSerializable()
class CurrentDeck extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'maxLevel')
  int maxLevel;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'rarity')
  String rarity;

  @JsonKey(name: 'requiredForUpgrade')
  dynamic requiredForUpgrade;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'key')
  String key;

  @JsonKey(name: 'elixir')
  int elixir;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'arena')
  int arena;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'id')
  int id;

  CurrentDeck(
    this.name,
    this.level,
    this.maxLevel,
    this.count,
    this.rarity,
    this.requiredForUpgrade,
    this.icon,
    this.key,
    this.elixir,
    this.type,
    this.arena,
    this.description,
    this.id,
  );

  factory CurrentDeck.fromJson(Map<String, dynamic> srcJson) =>
      _$CurrentDeckFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CurrentDeckToJson(this);
}

@JsonSerializable()
class Cards extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'maxLevel')
  int maxLevel;

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'rarity')
  String rarity;

  @JsonKey(name: 'requiredForUpgrade')
  dynamic requiredForUpgrade;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'key')
  String key;

  @JsonKey(name: 'elixir')
  int elixir;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'arena')
  int arena;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'id')
  int id;

  Cards(
    this.name,
    this.level,
    this.maxLevel,
    this.count,
    this.rarity,
    this.requiredForUpgrade,
    this.icon,
    this.key,
    this.elixir,
    this.type,
    this.arena,
    this.description,
    this.id,
  );

  factory Cards.fromJson(Map<String, dynamic> srcJson) =>
      _$CardsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CardsToJson(this);
}

@JsonSerializable()
class Achievements extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'stars')
  int stars;

  @JsonKey(name: 'value')
  int value;

  @JsonKey(name: 'target')
  int target;

  @JsonKey(name: 'info')
  String info;

  Achievements(
    this.name,
    this.stars,
    this.value,
    this.target,
    this.info,
  );

  factory Achievements.fromJson(Map<String, dynamic> srcJson) =>
      _$AchievementsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AchievementsToJson(this);
}
