import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_practice/application/services/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  UserNotifier();

  final _service = UserService();

  @override
  User? build() {
    _service.authStateChanges().listen((user) => state = user);

    return _service.user;
  }

  Future<void> signOut() => _service.signOut();
}
