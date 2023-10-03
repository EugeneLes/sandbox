import 'package:flutter/material.dart';
import 'package:sandbox/news/view/model/sources_view_model.dart';
import 'package:sandbox/shared/view/widgets/source_item.dart';

class SourcesContent extends StatelessWidget {
  final SourcesViewModel model;
  const SourcesContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return SourceItem(model: model.sources[index]);
      },
      itemCount: model.sources.length,
    );
  }
}
