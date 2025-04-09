import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'chat_screen.dart';



class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: WelcomeScreen.id,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case WelcomeScreen.id:
            return MaterialPageRoute(builder: (_) => WelcomeScreen());
          case LoginScreen.id:
            return MaterialPageRoute(builder: (_) => LoginScreen());
          case RegistrationScreen.id:
            return MaterialPageRoute(builder: (_) => RegistrationScreen());
          case ChatScreen.id:
            return MaterialPageRoute(builder: (_) => ChatScreen());
          default:
            return MaterialPageRoute(builder: (_) => WelcomeScreen());
        }
      },
    );
  }
}
