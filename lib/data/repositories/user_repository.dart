import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  UserRepository();

  final _auth = FirebaseAuth.instance;

  User? get user => _auth.currentUser;

  Stream<User?> authStateChanges() => _auth.authStateChanges();

  Future<void> signOut() => _auth.signOut();
}
