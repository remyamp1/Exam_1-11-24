import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Details"),
        ),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Center(
                  child: Image(image: AssetImage("assets/images/king.jpeg"))),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Beef Burger",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "7.50",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/queen.jpeg"),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}
