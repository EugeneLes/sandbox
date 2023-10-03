part of 'sources_bloc.dart';

@freezed
class SourcesState with _$SourcesState {
  const factory SourcesState.initial() = _SourcesInitialState;
  const factory SourcesState.loading() = _SourcesLoadingState;

  const factory SourcesState.loaded(SourcesViewModel viewModel) = _SourcesLoadedState;
}
