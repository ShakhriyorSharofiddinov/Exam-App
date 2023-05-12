import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exam_result/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final personRef = FirebaseFirestore.instance
        .collection('person')
        .withConverter<User>(
      fromFirestore: (snapshots, _) => User.fromJson(snapshots.data()!),
      toFirestore: (person, _) => person.toJson(),
    );
    final Stream<QuerySnapshot<User?>> teachersRegistered = personRef.snapshots();

    return SafeArea(
      child: Scaffold(
        body: StreamBuilder<QuerySnapshot<User?>>(
            stream: teachersRegistered,
            builder: (context,  snapshot) {
              return ListView.builder(
                itemCount: snapshot.data?.docs.length ?? 0,
                itemBuilder:(context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20,
                      child: Image.network(
                        "${snapshot.data!.docs[index].data()!.role}",
                      ),
                    ),
                    title: Text(snapshot.data!.docs[index]['name'] ?? ""),
                    subtitle: Text(snapshot.data!.docs[index]['password'] ?? " "),
                  );
                }
              );
            }
        ),
      ),
    );
  }
}
