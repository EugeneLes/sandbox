import 'package:flutter/material.dart';
import 'package:hex_conquest/hex_conquest.dart';

void main() {
  runApp(const HexConquestApp());
}

class HexConquestApp extends StatelessWidget {
  const HexConquestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hex Conquest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HexConquestFlow(),
    );
  }
}
