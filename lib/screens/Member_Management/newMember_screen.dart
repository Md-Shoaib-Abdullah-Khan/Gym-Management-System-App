import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class newMemberScreen extends StatefulWidget {
  static String id = 'newMember_screen';
  const newMemberScreen({super.key});

  @override
  State<newMemberScreen> createState() => _newMemberScreenState();
}

class _newMemberScreenState extends State<newMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Hello world.",
      ),
    );
  }
}
