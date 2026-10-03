import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_contact/core/routes/app_routes.dart';
import 'package:get_contact/feature/view/screens/home_screen.dart';
import 'package:get_contact/feature/view/screens/new_contact_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.newContact: (context) => NewContactScreen(),
      },
    );
  }
}
