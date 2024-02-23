import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Text(auth.currentUser!.uid, style: TextStyle(fontSize: 20),),
          Text(auth.currentUser!.email!, style: TextStyle(fontSize: 20)),
          Text(auth.currentUser!.displayName!, style: TextStyle(fontSize: 20)),
          Text(auth.currentUser!.photoURL!, style: TextStyle(fontSize: 20)),
          Image.network(auth.currentUser!.photoURL!)
        ],
      ),
    );
  }
}
