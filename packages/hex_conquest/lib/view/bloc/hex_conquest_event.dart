part of 'hex_conquest_bloc.dart';

@freezed
sealed class HexConquestEvent with _$HexConquestEvent {
  const factory HexConquestEvent.started(MatchConfig config) = _Started;
  const factory HexConquestEvent.move(Axial destination) = _Move;
  const factory HexConquestEvent.build(Axial cell) = _Build;
  const factory HexConquestEvent.endTurn() = _EndTurn;
  const factory HexConquestEvent.tick() = _Tick;
}
