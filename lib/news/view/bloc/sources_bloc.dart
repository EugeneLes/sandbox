import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sandbox/news/domain/models/source_model.dart';
import 'package:sandbox/news/domain/models/sources_model.dart';
import 'package:sandbox/news/domain/usecases/load_sources.dart';
import 'package:sandbox/news/view/model/source_view_model.dart';
import 'package:sandbox/news/view/model/sources_view_model.dart';

part 'sources_bloc.freezed.dart';
part 'sources_event.dart';
part 'sources_state.dart';

@Injectable()
class SourcesBloc extends Bloc<SourcesEvent, SourcesState> {
  final LoadSourcesUC _loadSourcesUC;

  StreamSubscription? refreshSubscr;

  SourcesBloc(
    this._loadSourcesUC,
  ) : super(
          const SourcesState.initial(),
        ) {
    on<_SourcesLoadEvent>((_, emit) => _loadSources(emit));
    on<_SourcesFavoriteEvent>((event, emit) => _markArticle(event, emit));
  }

  init() {
    add(const SourcesEvent.load());
    refreshSubscr?.cancel();
    refreshSubscr = Stream.periodic(
      const Duration(minutes: 1),
    ).listen((event) {
      add(const SourcesEvent.load());
    });
  }

  @override
  Future<void> close() {
    refreshSubscr?.cancel();
    return super.close();
  }

  _loadSources(Emitter emit) async {
    emit(const SourcesState.loading());
    final result = await _loadSourcesUC.call();
    emit(
      SourcesState.loaded(result.toViewModel()),
    );
  }

  _markArticle(_SourcesFavoriteEvent event, Emitter emit) {}
}

extension SourcesX on SourcesModel {
  SourcesViewModel toViewModel() =>
      SourcesViewModel(sources: sources.map((e) => e.toViewModel()).toList());
}

extension SourceX on SourceModel {
  SourceViewModel toViewModel() => SourceViewModel(
        id: id,
        name: name,
        description: description,
        url: url,
        category: category,
        language: language,
        country: country,
      );
}
