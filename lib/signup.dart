import 'package:examburger/login.dart';
import 'package:examburger/reg.dart';
import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset('assets/images/IMG_20241028_202105.png'),
          ),
          SizedBox(height: 25),
          Text(
            'The Fastest Food',
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
          Text('Delivery App In Town',
              style: TextStyle(fontSize: 35, color: Colors.black)),
          SizedBox(height: 10),
          Text('Pick your desired food items from the menu',
              style: TextStyle(
                  fontSize: 15, color: const Color.fromARGB(255, 39, 38, 38))),
          Text('There are more than 200 items.',
              style: TextStyle(
                  fontSize: 15, color: const Color.fromARGB(255, 39, 38, 38))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResPages()));
                  },
                  child: Text('Sign in')),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Dont't have anaccount?"),
                SizedBox(width: 2),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Sing up',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
