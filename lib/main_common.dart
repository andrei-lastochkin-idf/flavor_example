import 'package:flavor_example/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final config = context.read(flavorConfigProvider);

    return MaterialApp(
      title: config.state.appTitle,
      theme: config.state.theme,
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.read(flavorConfigProvider).state.appTitle),
        ),
        body: Image.asset(
          context.read(flavorConfigProvider).state.imageLocation,
          fit: BoxFit.cover,
        ),
      );
}
