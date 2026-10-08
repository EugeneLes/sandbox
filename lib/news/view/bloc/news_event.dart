part of 'news_bloc.dart';

@freezed
abstract class NewsEvent with _$NewsEvent {
  const factory NewsEvent.load(
    String source, {
    @Default(false) bool skipLoader,
  }) = _NewsLoadEvent;
}
