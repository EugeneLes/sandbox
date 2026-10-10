part of 'hex_conquest_bloc.dart';

@freezed
sealed class HexConquestState with _$HexConquestState {
  const factory HexConquestState.initial() = HexConquestInitialState;
  const factory HexConquestState.playing(GameViewModel viewModel) = HexConquestPlayingState;
}
