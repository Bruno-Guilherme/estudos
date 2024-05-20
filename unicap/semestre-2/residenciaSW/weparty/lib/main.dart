import 'package:flutter/material.dart';
import 'package:weparty/components/onboarding/onboarding_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeParty',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 82, 82, 1)),
        ),
        home: const OnboardingView()
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  
}
