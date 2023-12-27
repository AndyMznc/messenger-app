import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_messenger/env/env.dart';
import 'package:supabase_messenger/pages/splash_page.dart';
import 'package:supabase_messenger/utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xuauujntwaywuwawizsf.supabase.co',
    anonKey: Env.supabaseKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp, mais moins bien',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
