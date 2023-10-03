part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = NewsInitialState;
  const factory NewsState.loading() = NewsLoadingState;

  const factory NewsState.loaded(NewsViewModel viewModel) = NewsLoadedState;
}
