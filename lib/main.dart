// import 'package:flutter/material.dart';
// import 'package:happy_drip/app_screens/home/Home.dart';
// import 'package:happy_drip/app_screens/not_exist.dart';
// import 'package:happy_drip/example/example_backup_code.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Happy Drip",
//       initialRoute: "/",
//       routes: {
//         "/": (context) => const Home(),
//         "/doctor": (context) => const Home(),
//       },
//       onGenerateRoute: (settings) {
//         if (settings.name == PassArgumentsScreen.routeName) {
//           final args = settings.arguments as ScreenArguments;

//           return MaterialPageRoute(
//             builder: (context) {
//               return PassArgumentsScreen(
//                 title: args.title, 
//                 message: args.message
//               );
//             }
//           );
//         }

//         assert(false, 'Need to implement ${settings.name}');
//         return null;
//       },
//       onUnknownRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//           builder: (context) => const NotExist(),
//         );
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      // routes: {
      //   "/": (context) => const IntroPage(),
      //   "/home": (context) => const Home(),
      // }
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 120,
            height: 180, 
            color: Colors.red[300]
          ),
          // ignore: prefer_const_constructors
          Text(
            "Test",
            style: const TextStyle(color: Colors.white54),
          )
          // Container(
          //   height: 100,
          //   color: Colors.deepOrange[400],
          // )
        ],
      )
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}