import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String value, value2, value3, value4;
  List valueItem1 = ["1", "2", "3", "4"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo,
          title: Text(
            "Restaurant Menu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              shadowColor: Colors.blueGrey,
              color: Colors.indigoAccent,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.only(top: 3, bottom: 3),
                          height: 125,
                          width: 200,
                          child: Image.asset('images/meal.png'),
                        ),
                        DropdownButton(
                          value: value4,
                          onChanged: (value1) {
                            setState(
                              () {
                                value4 = value1;
                              },
                            );
                          },
                          items: valueItem1.map((vItem) {
                            return DropdownMenuItem(
                              value: vItem,
                              child: Text(vItem),
                            );
                          }).toList(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Meal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              shadowColor: Colors.blueGrey,
              color: Colors.indigoAccent,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          height: 125,
                          width: 200,
                          child: Image.asset('images/pizza.jpg'),
                        ),
                        DropdownButton(
                          value: value3,
                          onChanged: (value1) {
                            setState(
                              () {
                                value3 = value1;
                              },
                            );
                          },
                          items: valueItem1.map((vItem) {
                            return DropdownMenuItem(
                              value: vItem,
                              child: Text(vItem),
                            );
                          }).toList(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pizza',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              shadowColor: Colors.blueGrey,
              color: Colors.indigoAccent,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.only(bottom: 5, top: 5),
                          height: 125,
                          width: 200,
                          child: Image.asset('images/sandwich.jpg'),
                        ),
                        DropdownButton(
                          value: value2,
                          onChanged: (value1) {
                            setState(
                              () {
                                value2 = value1;
                              },
                            );
                          },
                          items: valueItem1.map((vItem) {
                            return DropdownMenuItem(
                              value: vItem,
                              child: Text(vItem),
                            );
                          }).toList(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sandwiches',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 10,
              shadowColor: Colors.blueGrey,
              color: Colors.indigoAccent,
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.only(bottom: 5, top: 5),
                          height: 125,
                          width: 200,
                          child: Image.asset(
                            'images/appetizers.jpg',
                          ),
                        ),
                        DropdownButton(
                          value: value,
                          onChanged: (value1) {
                            setState(
                              () {
                                value = value1;
                              },
                            );
                          },
                          items: valueItem1.map((vItem) {
                            return DropdownMenuItem(
                              value: vItem,
                              child: Text(vItem),
                            );
                          }).toList(),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Appetizers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
