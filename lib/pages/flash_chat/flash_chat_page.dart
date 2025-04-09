import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'chat_screen.dart';



class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  // Initialize Firebase as a static future (optional but recommended)
  static final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize Firebase:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Firebase initialization failed!'),
            ),
          );
        }

        // Once complete, show your app
        if (snapshot.connectionState == ConnectionState.done) {
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

        // Show loading indicator while waiting
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
