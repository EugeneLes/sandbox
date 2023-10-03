// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headlines_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopHeadlinesDTO _$TopHeadlinesDTOFromJson(Map<String, dynamic> json) =>
    TopHeadlinesDTO(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopHeadlinesDTOToJson(TopHeadlinesDTO instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
