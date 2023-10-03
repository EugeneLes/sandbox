import 'package:flutter/material.dart';
import 'package:sandbox/news/view/model/source_view_model.dart';
import 'package:sandbox/routing/routes.dart';

class SourceItem extends StatelessWidget {
  const SourceItem({
    super.key,
    required this.model,
  });
  final SourceViewModel model;

  void _onCardPressed(BuildContext context) {
    print('___onCardPressed');
    NewsRoute(model.id).go(context);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => _onCardPressed(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (model.description != null) Text(model.description ?? ''),
                    if (model.category != null) Text('Category: ${model.category ?? ''}'),
                    if (model.country != null) Text('Country: ${model.country ?? ''}'),
                    if (model.language != null) Text('Language: ${model.language ?? ''}'),
                  ],
                ),
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
