import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/match.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:hex_conquest/view/model/game_view_model.dart';

part 'hex_conquest_bloc.freezed.dart';
part 'hex_conquest_event.dart';
part 'hex_conquest_state.dart';

class HexConquestBloc extends Bloc<HexConquestEvent, HexConquestState> {
  HexConquestBloc() : super(const HexConquestState.initial()) {
    on<_Started>(_onStarted);
    on<_Move>(_onMove);
    on<_Build>(_onBuild);
    on<_EndTurn>(_onEndTurn);
    on<_Tick>(_onTick);
  }

  Match? _match;
  Timer? _timer;
  int _remaining = 0;

  void start(MatchConfig config) => add(HexConquestEvent.started(config));

  void _onStarted(_Started event, Emitter<HexConquestState> emit) {
    _match = startMatch(event.config);
    _remaining = event.config.turnSeconds;
    _armTimer();
    emit(_playing());
  }

  void _onMove(_Move event, Emitter<HexConquestState> emit) {
    final match = _match;
    if (match == null) return;
    _match = moveScout(match, event.destination);
    _stopIfWon();
    emit(_playing());
  }

  void _onBuild(_Build event, Emitter<HexConquestState> emit) {
    final match = _match;
    if (match == null) return;
    _match = placeStronghold(match, event.cell);
    emit(_playing());
  }

  void _onEndTurn(_EndTurn event, Emitter<HexConquestState> emit) {
    _finishTurn(emit);
  }

  void _onTick(_Tick event, Emitter<HexConquestState> emit) {
    final match = _match;
    if (match == null || match.mode != GameMode.live || match.winner != null) return;
    _remaining -= 1;
    if (_remaining > 0) {
      emit(_playing());
      return;
    }
    _finishTurn(emit);
  }

  void _finishTurn(Emitter<HexConquestState> emit) {
    final match = _match;
    if (match == null) return;
    _match = endTurn(match);
    _remaining = _match!.turnSeconds;
    _armTimer();
    emit(_playing());
  }

  void _stopIfWon() {
    if (_match?.winner == null) return;
    _timer?.cancel();
    _timer = null;
  }

  void _armTimer() {
    _timer?.cancel();
    _timer = null;
    final match = _match;
    if (match == null || match.mode != GameMode.live || match.winner != null) return;
    _remaining = match.turnSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!isClosed) add(const HexConquestEvent.tick());
    });
  }

  HexConquestState _playing() {
    final match = _match!;
    return HexConquestState.playing(
      describeMatch(
        match,
        remainingSeconds: match.mode == GameMode.live ? _remaining : null,
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
