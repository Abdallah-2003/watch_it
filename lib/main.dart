import 'package:flutter/material.dart';
import 'package:watch_it/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WatchIt());
}

class WatchIt extends StatelessWidget {
  const WatchIt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WatchIt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeView(),
    );
  }
}
