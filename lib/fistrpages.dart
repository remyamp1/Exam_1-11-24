import 'package:examburger/database.dart';
import 'package:examburger/details.dart';
import 'package:flutter/material.dart';

class FirstDemo extends StatefulWidget {
  const FirstDemo({super.key});

  @override
  State<FirstDemo> createState() => _FirstDemoState();
}

class _FirstDemoState extends State<FirstDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delicious food ready to \n delivered for you',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: double.infinity,
            child: Row(
              children: [Icon(Icons.search), Text('Search')],
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Burger')),
              SizedBox(width: 6),
              ElevatedButton(onPressed: () {}, child: Text('Pizza')),
              SizedBox(width: 6),
              ElevatedButton(onPressed: () {}, child: Text('Soups')),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Most Popular',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Details()));
                      },
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 219, 218, 218),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          Database.MyList[index]['image']))),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(Database.MyList[index]['name']),
                            Text(Database.MyList[index]['name1']),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(Database.MyList[index]['price']),
                                  Spacer(),
                                  Icon(
                                    Icons.add,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
