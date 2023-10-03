import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/traffic_light/view/bloc/traffic_light_bloc.dart';
import 'package:sandbox/traffic_light/view/page/traffic_light_content.dart';

import '../../../shared/di/di.dart';

class TrafficLightPage extends StatefulWidget {
  const TrafficLightPage({super.key});

  @override
  State<TrafficLightPage> createState() => _TrafficLightPageState();
}

class _TrafficLightPageState extends State<TrafficLightPage>
    with AutomaticKeepAliveClientMixin<TrafficLightPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => get<TrafficLightBloc>()..init(),
      child: BlocBuilder<TrafficLightBloc, TrafficLightState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (uiModel) {
            return TrafficLightContent(model: uiModel);
          },
        ),
      ),
    );
  }
}
