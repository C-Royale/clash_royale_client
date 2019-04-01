import 'package:clash_royale_client/model/home_state.dart';
import 'package:clash_royale_client/model/player.dart';
import 'package:flutter/material.dart';

class AppState {
  final Player player;

  Locale locale;

  HomeState homeState;

  AppState({this.player, this.locale, this.homeState});

  AppState copyWith({Player player, Locale locale, HomeState homeState}) =>
      AppState(
          player: player ?? this.player,
          locale: locale ?? this.locale,
          homeState: homeState ?? this.homeState);

  static AppState fromJson(dynamic json) => AppState(
      player: json != null ? Player.fromJson(json['player']) : Player(),
      locale: (json != null && json['locale'] != null)
          ? Locale(json['locale'].toString().split('_')[0],
              json['locale'].toString().split('_')[1])
          : Locale('zh', 'CH'),
      homeState: json != null
          ? HomeState.fromJson(json['homeState'])
          : HomeState.initial());

  dynamic toJson() =>
      {'player': player, 'locale': locale.toString(), 'homeState': player};
}
