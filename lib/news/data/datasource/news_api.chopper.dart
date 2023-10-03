// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NewsApi extends NewsApi {
  _$NewsApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsApi;

  @override
  Future<Response<dynamic>> _getEverything(
    String apiKey,
    String? q,
    String? searchIn,
    String? sources,
    String? domains,
    String? sortBy,
    int? pageSize,
    int? page,
  ) {
    final Uri $url = Uri.parse('v2/everything');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'q': q,
      'searchIn': searchIn,
      'sources': sources,
      'domains': domains,
      'sortBy': sortBy,
      'pageSize': pageSize,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _getTopHeadlines(
    String apiKey,
    String? country,
    String? category,
    String? sources,
    String? q,
    int? pageSize,
    int? page,
  ) {
    final Uri $url = Uri.parse('/v2/top-headlines');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'country': country,
      'category': category,
      'sources': sources,
      'q': q,
      'pageSize': pageSize,
      'page': page,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _getSources(
    String apiKey,
    String? category,
    String? language,
    String? country,
  ) {
    final Uri $url = Uri.parse('/v2/top-headlines/sources');
    final Map<String, dynamic> $params = <String, dynamic>{
      'apiKey': apiKey,
      'category': category,
      'language': language,
      'country': country,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
