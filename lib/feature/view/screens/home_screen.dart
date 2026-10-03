import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_contact/core/routes/app_routes.dart';
import 'package:get_contact/feature/data/model/data_user.dart';
import 'package:get_contact/feature/view/widgets/card_person.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataUser> users = [];
  @override
  void initState() {
    super.initState();
    getAllContact();
  }

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
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.newContact);
        },
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

  void getAllContact() async {
    var collection = FirebaseFirestore.instance.collection("contact");
    var query = await collection.get();
    var docs = query.docs;
    var list = docs.map((doc) {
      var map = doc.data();
      return DataUser(name: map["name"], phone: map["phone"]);
    }).toList();
    users = list;
    setState(() {});
  }
}
