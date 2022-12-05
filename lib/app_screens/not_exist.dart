import 'package:flutter/material.dart';

class NotExist extends StatelessWidget {
  const NotExist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 20,
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/404_error.jpg",
                fit: BoxFit.fill
              )  
            ],
          )
        ),
      )
      // child: Column(
      //   children: [
      //     Image.asset(
      //       "",
            
      //     )
      //   ],
      // )
    );
  }
}
