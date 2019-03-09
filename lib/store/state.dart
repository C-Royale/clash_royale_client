import 'package:clash_royale_client/model/player.dart';

class AppState {
  final Player player;

  AppState({this.player});

  AppState copyWith({Player player}) => AppState(player: player ?? this.player);

  static AppState fromJson(dynamic json) => AppState(
      player: json != null ? Player.fromJson(json['player']) : Player());

  dynamic toJson() => {'player': player};
}
