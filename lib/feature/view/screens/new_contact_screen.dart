import 'package:flutter/material.dart';
import 'package:get_contact/feature/view/widgets/text_field_widget.dart';
import 'package:get_contact/feature/view/widgets/custome_button.dart';

class NewContactScreen extends StatelessWidget {
  const NewContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var phone = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),

        title: Text(
          'Add New Contact',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textfieldwidget(
                controller: name,
                label: 'Name',
                text: 'Enter Name',
              ),

              const SizedBox(height: 16),

              Textfieldwidget(
                controller: phone,
                label: 'Phone Number',
                text: 'Enter Phone Number',

                maxLines: 4,
              ),
              CustomMaterialButton(onPressed: () {}, text: "Save"),
            ],
          ),
        ),
      ),
    );
  }
}
