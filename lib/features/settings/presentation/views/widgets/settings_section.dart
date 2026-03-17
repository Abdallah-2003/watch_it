import 'package:flutter/material.dart';
import 'package:watch_it/features/settings/presentation/views/widgets/section_title.dart';
import 'package:watch_it/features/settings/presentation/views/widgets/setting_item.dart';


class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const SectionTitle(title: "ACCOUNT"),
          const SizedBox(height: 10),

          SettingsItem(
            icon: Icons.person,
            title: "Account Details",
            onTap: () {},
          ),
          SettingsItem(
            icon: Icons.notifications,
            title: "Notifications",
            onTap: () {},
          ),
          SettingsItem(
            icon: Icons.lock,
            title: "Privacy & Security",
            onTap: () {},
          ),

          const SizedBox(height: 20),
          const SectionTitle(title: "STREAMING"),
          const SizedBox(height: 10),

          SettingsItem(
            icon: Icons.hd,
            title: "Playback Quality",
            subtitle: "Auto (High Definition)",
            onTap: () {},
          ),
          SettingsItem(
            icon: Icons.download,
            title: "Downloads",
            onTap: () {},
          ),

        ],
      ),
    );
  }
}
