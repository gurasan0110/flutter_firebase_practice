import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_practice/data/repositories/user_repository.dart';

class UserService {
  UserService();

  final _repository = UserRepository();

  User? get user => _repository.user;

  Stream<User?> authStateChanges() => _repository.authStateChanges();

  Future<void> signOut() => _repository.signOut();
}
