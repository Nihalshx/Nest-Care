import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login_page',
    routes: {
      'login_page': (context) => LoginPage(),
      'signup_Page': (context) => SignupPage(),
      'ForgotPassword': (context) => ForgotPassword(),
      'ResetPassword': (context) => ResetPassword(),
    },
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


