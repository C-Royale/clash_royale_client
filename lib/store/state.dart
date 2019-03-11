import 'package:clash_royale_client/model/player.dart';
import 'package:flutter/material.dart';

class AppState {
  final Player player;

  Locale locale;

  AppState({this.player, this.locale});

  AppState copyWith({Player player, Locale locale}) =>
      AppState(player: player ?? this.player, locale: locale ?? this.locale);

  static AppState fromJson(dynamic json) => AppState(
      player: json != null ? Player.fromJson(json['player']) : Player(),
      locale: (json != null && json['locale'] != null)
          ? Locale(json['locale'].toString().split('_')[0],
              json['locale'].toString().split('_')[1])
          : Locale('zh', 'CH'));

  dynamic toJson() => {'player': player, 'locale': locale.toString()};
}
