import 'package:flutter/material.dart';
import '../pages/detail_chat_page.dart';
import '../pages/edit_profile_page.dart';
import '../pages/splash_page.dart';
import '../pages/sign_in_page.dart';
import '../pages/sign_up_page.dart';
import '../pages/home/main_page.dart';
// import '../theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shamo',
      // theme: ThemeData(
      //   useMaterial3: false, // <-- tambahkan ini
      // ),
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat' : (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
      },
    );
  }
}