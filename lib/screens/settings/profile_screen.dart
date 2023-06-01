import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_academy/screens/settings/sections/about_section.dart';
import 'package:prime_academy/screens/settings/sections/header_info_section.dart';
import 'package:prime_academy/screens/settings/sections/language_section.dart';
import 'package:prime_academy/screens/settings/sections/logout_section.dart';
import 'package:prime_academy/screens/settings/sections/rate_us.dart';
import 'package:prime_academy/screens/settings/sections/share_app.dart';
import 'package:prime_academy/screens/settings/sections/style_section.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFF1EFEF),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderInfoSection(),
              const StyleSection(),
              const SizedBox(height: 8),
              const LanguageSection(),
              const SizedBox(height: 8),
              const AboutSection(),
              const SizedBox(height: 8),
              const RateUS(),
              const SizedBox(height: 8),
              const ShareApp(),
              const SizedBox(height: 16),
              LogoutSection(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
