import 'package:flutter/material.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/features/settings/presentation/views/widgets/profile_section.dart';
import 'package:watch_it/features/settings/presentation/views/widgets/settings_section.dart';


class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: AppBar(
        backgroundColor: AppColors.primaryDark,
        elevation: 0,
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ProfileSection(),
            SizedBox(height: 20),
            SettingsSection(),
          ],
        ),
      ),
    );
  }
}