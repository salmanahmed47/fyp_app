import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interestin_event_app/features/authentication/screens/onboarding/onboarding.dart';
import '../utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: EventAppTheme.lightTheme,
      darkTheme: EventAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
