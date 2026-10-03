import 'package:flutter/material.dart';
import 'package:get_contact/feature/view/widgets/card_person.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Mohamed Contacts", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            CardPerson(subtitle: "0101029374$index", title: "Ali$index"),
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Text(
          "Add",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
