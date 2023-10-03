import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart';
import 'package:sandbox/shared/view/widgets/article_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage>
    with AutomaticKeepAliveClientMixin<FavoritesPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    context.read<FavoritesBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) => state.map(
        initial: (_) => const Center(
          child: Text('favorites'),
        ),
        loading: (_) => const CircularProgressIndicator(),
        loaded: (state) => state.articles.isNotEmpty
            ? ListView.builder(
                itemCount: state.articles.length,
                itemBuilder: (context, index) => ArticleItem(
                  isInFavorites: true,
                  model: state.articles[index],
                ),
              )
            : const Center(
                child: Text('Empty. To add any article here click on favorite Icon on any article'),
              ),
      ),
    );
  }
}
