import 'package:examburger/login.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Box box;

  TextEditingController fullcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController phonenocontroller = TextEditingController();
  List<Map<String, String>> itemlist = [];
  String _regmessage = '';

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            TextField(
              controller: fullcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Fullname")),
            ),
            SizedBox(height: 25),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Emali")),
            ),
            SizedBox(height: 25),
            TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Password")),
            ),
            SizedBox(height: 25),
            TextField(
              controller: confirmpasswordcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Confirmpassword")),
            ),
            SizedBox(height: 25),
            TextField(
              controller: phonenocontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("PhoneNO")),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                  onPressed: () {},
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (fullcontroller.text.isEmpty ||
                              emailcontroller.text.isEmpty ||
                              passwordcontroller.text.isEmpty ||
                              confirmpasswordcontroller.text.isEmpty ||
                              phonenocontroller.text.isEmpty) {
                            _regmessage = 'All field are required';
                            return;
                          }
                          if (passwordcontroller.text !=
                              confirmpasswordcontroller.text) {
                            _regmessage = 'password do not match';
                            return;
                          }
                          itemlist.add({
                            'fullname': fullcontroller.text,
                            'email': emailcontroller.text,
                            'password': passwordcontroller.text,
                            'confirmpassword': confirmpasswordcontroller.text,
                            "phone": phonenocontroller.text
                          });
                          box.put(
                              'itemlist',
                              itemlist
                                  .map((e) => Map<String, dynamic>.from(e))
                                  .toList());
                          fullcontroller.clear();
                          emailcontroller.clear();
                          passwordcontroller.clear();
                          confirmpasswordcontroller.clear();
                          phonenocontroller.clear();
                          _regmessage = 'succfull';
                        });

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResPages()));
                        print('Registered Items:$itemlist');
                      },
                      child: Text("Create an account"))),
            ),
            Text("$_regmessage"),
            SizedBox(height: 15),
            ElevatedButton(onPressed: () {}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
