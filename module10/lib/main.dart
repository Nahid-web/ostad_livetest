import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;
  List<Color> colorList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Section Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            colorList.add(Colors.white);
            return ListTile(
              onTap: () {
                count++;

                colorList[index] = Colors.blue;
                setState(() {

                });
              },
              title: Container(
                color:  colorList[index],

                  padding: EdgeInsets.all(5),
                  child: Text('Item ${index + 1}')),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Selected Items'),
                  content: Text('You seletec $count itmes'),
                  actions: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Close'),),
                  ],
                );
              },);
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
