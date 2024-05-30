import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import 'package:weparty/components/onboarding/onboarding_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = 'NdRhReEWkw5qlw1rLVZ0q0ob0HE8TmMI06klzPt3';
  const keyClientKey = '7PramkwCgKCCN3jJhHHRzCYpyLYKWKEY6XUOOGpr';
  const keyParseServerUrl = 'https://parseapi.back4app.com/parse';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

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
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromRGBO(255, 82, 82, 1)),
          ),
          home: const SafeArea(child: OnboardingView())),
    );
  }
}

class MyAppState extends ChangeNotifier {}
