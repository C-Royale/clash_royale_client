import 'package:clash_royale_client/model/deck.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_state.g.dart';

@JsonSerializable()
class HomeState extends Object {
  @JsonKey(name: 'decks')
  List<Deck> decks;

  HomeState({this.decks});

  factory HomeState.fromJson(Map<String, dynamic> srcJson) =>
      _$HomeStateFromJson(srcJson);

  factory HomeState.initial() {
    return HomeState(decks: []);
  }

  Map<String, dynamic> toJson() => _$HomeStateToJson(this);
}
