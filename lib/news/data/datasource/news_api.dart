import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'news_api.chopper.dart';

const _apiKey = '97cb319c85f54b5a88f505a458b09537';

@ChopperApi()
abstract class NewsApi extends ChopperService {
  static NewsApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$NewsApi(client);
    }

    final newClient = ChopperClient(
        services: [_$NewsApi()],
        converter: converter ?? const JsonConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('https://newsapi.org'));
    return _$NewsApi(newClient);
  }

  Future<chopper.Response> getEverything({
    final String? q,
    final String? searchIn,
    final String? sources,
    final String? domains,
    final String? sortBy,
    final int? pageSize,
    final int? page,
  }) {
    return _getEverything(
      _apiKey,
      q,
      searchIn,
      sources,
      domains,
      sortBy,
      pageSize,
      page,
    );
  }

  @Get(path: 'v2/everything')
  Future<chopper.Response> _getEverything(
    @Query('apiKey') final String apiKey,
    @Query('q') final String? q,
    @Query('searchIn') final String? searchIn,
    @Query('sources') final String? sources,
    @Query('domains') final String? domains,
    @Query('sortBy') final String? sortBy,
    @Query('pageSize') final int? pageSize,
    @Query('page') final int? page,
  );

  Future<chopper.Response> getTopHeadlines({
    final String? country,
    final String? category,
    final String? sources,
    final String? q,
    final int? pageSize,
    final int? page,
  }) {
    return _getTopHeadlines(
      _apiKey,
      country,
      category,
      sources,
      q,
      pageSize,
      page,
    );
  }

  @Get(path: '/v2/top-headlines')
  Future<chopper.Response> _getTopHeadlines(
    @Query('apiKey') final String apiKey,
    @Query('country') final String? country,
    @Query('category') final String? category,
    @Query('sources') final String? sources,
    @Query('q') final String? q,
    @Query('pageSize') final int? pageSize,
    @Query('page') final int? page,
  );

  Future<chopper.Response> getSources({
    final String? category,
    final String? language,
    final String? country,
  }) {
    return _getSources(
      _apiKey,
      category,
      language,
      country,
    );
  }

  @Get(path: '/v2/top-headlines/sources')
  Future<chopper.Response> _getSources(
    @Query('apiKey') final String apiKey,
    @Query('category') final String? category,
    @Query('language') final String? language,
    @Query('country') final String? country,
  );
}
