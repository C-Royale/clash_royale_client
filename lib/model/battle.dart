import 'package:json_annotation/json_annotation.dart';

part 'battle.g.dart';

@JsonSerializable()
class Battle extends Object {
  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'challengeType')
  String challengeType;

  @JsonKey(name: 'mode')
  Mode mode;

  @JsonKey(name: 'utcTime')
  int utcTime;

  @JsonKey(name: 'deckType')
  String deckType;

  @JsonKey(name: 'teamSize')
  int teamSize;

  @JsonKey(name: 'winner')
  int winner;

  @JsonKey(name: 'teamCrowns')
  int teamCrowns;

  @JsonKey(name: 'opponentCrowns')
  int opponentCrowns;

  @JsonKey(name: 'team')
  List<Team> team;

  @JsonKey(name: 'opponent')
  List<Opponent> opponent;

  @JsonKey(name: 'arena')
  Arena arena;

  Battle(
    this.type,
    this.challengeType,
    this.mode,
    this.utcTime,
    this.deckType,
    this.teamSize,
    this.winner,
    this.teamCrowns,
    this.opponentCrowns,
    this.team,
    this.opponent,
    this.arena,
  );

  factory Battle.fromJson(Map<String, dynamic> srcJson) =>
      _$BattleFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BattleToJson(this);
}

@JsonSerializable()
class Mode extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'deck')
  String deck;

  @JsonKey(name: 'cardLevels')
  String cardLevels;

  @JsonKey(name: 'overtimeSeconds')
  int overtimeSeconds;

  @JsonKey(name: 'players')
  String players;

  @JsonKey(name: 'sameDeck')
  bool sameDeck;

  Mode(
    this.name,
    this.deck,
    this.cardLevels,
    this.overtimeSeconds,
    this.players,
    this.sameDeck,
  );

  factory Mode.fromJson(Map<String, dynamic> srcJson) =>
      _$ModeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ModeToJson(this);
}

@JsonSerializable()
class Team extends Object {
  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'crownsEarned')
  int crownsEarned;

  @JsonKey(name: 'startTrophies')
  int startTrophies;

  @JsonKey(name: 'clan')
  Clan clan;

  @JsonKey(name: 'deckLink')
  String deckLink;

  @JsonKey(name: 'deck')
  List<Deck> deck;

  Team(
    this.tag,
    this.name,
    this.crownsEarned,
    this.startTrophies,
    this.clan,
    this.deckLink,
    this.deck,
  );

  factory Team.fromJson(Map<String, dynamic> srcJson) =>
      _$TeamFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable()
class Clan extends Object {
  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'badge')
  Badge badge;

  Clan(
    this.tag,
    this.name,
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
class Deck extends Object {
  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'level')
  int level;

  @JsonKey(name: 'maxLevel')
  int maxLevel;

  @JsonKey(name: 'rarity')
  String rarity;

  @JsonKey(name: 'requiredForUpgrade')
  int requiredForUpgrade;

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

  Deck(
    this.name,
    this.level,
    this.maxLevel,
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

  factory Deck.fromJson(Map<String, dynamic> srcJson) =>
      _$DeckFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DeckToJson(this);
}

@JsonSerializable()
class Opponent extends Object {
  @JsonKey(name: 'tag')
  String tag;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'crownsEarned')
  int crownsEarned;

  @JsonKey(name: 'startTrophies')
  int startTrophies;

  @JsonKey(name: 'clan')
  Clan clan;

  @JsonKey(name: 'deckLink')
  String deckLink;

  @JsonKey(name: 'deck')
  List<Deck> deck;

  Opponent(
    this.tag,
    this.name,
    this.crownsEarned,
    this.startTrophies,
    this.clan,
    this.deckLink,
    this.deck,
  );

  factory Opponent.fromJson(Map<String, dynamic> srcJson) =>
      _$OpponentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$OpponentToJson(this);
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
