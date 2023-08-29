import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/bloc/countbloc.dart';
import 'package:providertest/pages/newpage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
