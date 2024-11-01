import 'package:examburger/fistrpages.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ResPages extends StatefulWidget {
  const ResPages({super.key});

  @override
  State<ResPages> createState() => _ResPagesState();
}

class _ResPagesState extends State<ResPages> {
  late Box box;
  TextEditingController usercontroller=TextEditingController();
    TextEditingController passwordcontroller=TextEditingController();
    String _loginmessage='';
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
          children: [
            SizedBox(height: 30),
            TextField(
              controller: usercontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("UserName")),
                  onChanged: (text) {
                    setState(() {
                      _loginmessage='';
                    });
                    
                  },
            ),
            SizedBox(height: 30),
            TextField(
controller: passwordcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Password")),
                  onChanged: (text) {
setState(() {
  _loginmessage='';
});                    
                  },
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {},
                child: GestureDetector(
                    onTap: () {

                      List<Map<dynamic,String>>userlistdynamic=('itemlist',
                      );
                      List<Map<String,String>>userlist=userlistdynamic
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FirstDemo()));
                    },
                    child: Text("Login"))),
          ],
        ),
      ),
    );
  }
}
