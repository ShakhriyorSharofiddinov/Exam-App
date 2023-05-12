
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../user.dart';

class LoginService {
  final personRef = FirebaseFirestore.instance
      .collection('usersLogInAndPassword')
      .withConverter<User>(
        fromFirestore: (snapshots, _) => User.fromJson(snapshots.data()!),
        toFirestore: (person, _) => person.toJson(),
      );

  List<User> getUsersLogIn() {
    final List<User> users = [];
    personRef.snapshots().listen((event) {
      for (var element in event.docs) {
        users.add(element.data());
      }
    });
    return users;
  }
}
