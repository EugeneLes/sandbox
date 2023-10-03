import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/news/view/bloc/sources_bloc.dart';
import 'package:sandbox/news/view/page/sources_content.dart';

import '../../../shared/di/di.dart';

class SourcesPage extends StatefulWidget {
  const SourcesPage({super.key});

  @override
  State<SourcesPage> createState() => _SourcesPageState();
}

class _SourcesPageState extends State<SourcesPage> with AutomaticKeepAliveClientMixin<SourcesPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => get<SourcesBloc>()..init(),
      child: BlocBuilder<SourcesBloc, SourcesState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (uiModel) {
            return SourcesContent(model: uiModel);
          },
        ),
      ),
    );
  }
}
