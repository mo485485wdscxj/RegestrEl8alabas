import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/Reg_Provider.dart';
import 'Screens/SigUp_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()..fetchAllUsers()),
      ],
      child: MaterialApp(
        title: 'User App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SignUpScreen(),
      ),
    );
  }
}
