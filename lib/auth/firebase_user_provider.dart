import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EsalonFirebaseUser {
  EsalonFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

EsalonFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EsalonFirebaseUser> esalonFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EsalonFirebaseUser>((user) => currentUser = EsalonFirebaseUser(user));
