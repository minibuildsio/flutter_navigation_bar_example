import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.map));
  }
}

class StatsWidget extends StatelessWidget {
  const StatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.table_chart));
  }
}

class VisitsWidget extends StatelessWidget {
  const VisitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Icon(Icons.location_on));
  }
}
