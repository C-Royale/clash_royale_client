// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return HomeState(
      decks: (json['decks'] as List)
          ?.map((e) =>
              e == null ? null : Deck.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$HomeStateToJson(HomeState instance) =>
    <String, dynamic>{'decks': instance.decks};
