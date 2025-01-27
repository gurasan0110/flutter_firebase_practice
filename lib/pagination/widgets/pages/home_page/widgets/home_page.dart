import 'package:flutter/material.dart';
import 'package:flutter_firebase_practice/pagination/providers/user_notifier_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: ref.read(userNotifierProvider.notifier).signOut,
          child: Text('Sign out'),
        ),
      ),
    );
  }
}
