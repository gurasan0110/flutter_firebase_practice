import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_practice/pagination/providers/user_notifier_provider.dart';
import 'package:flutter_firebase_practice/pagination/widgets/pages/home_page/widgets/home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);

    return MaterialApp(
      home: user == null
          ? SignInScreen(showPasswordVisibilityToggle: true)
          : HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
