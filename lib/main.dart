import 'package:flutter/material.dart';
import 'package:happy_drip/app_screens/home/Home.dart';
import 'package:happy_drip/app_screens/not_exist.dart';
import 'package:happy_drip/example/example_backup_code.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Happy Drip",
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/doctor": (context) => const Home(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final args = settings.arguments as ScreenArguments;

          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title, 
                message: args.message
              );
            }
          );
        }

        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const NotExist(),
        );
      },
    );
  }
}
