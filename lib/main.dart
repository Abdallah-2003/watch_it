import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/networking/supabase_services.dart';
import 'package:watch_it/core/routing/app_router.dart';
import 'package:watch_it/core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseServices.init();
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
      initialRoute: AppRoutes.splashView,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
