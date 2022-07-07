import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Wrap widget only takes the space it's child required and to prove that we are using a Container widget here 
        child: Container(
          height: 200,
          width: 400,
          color: Colors.red,
          /*Here I just replaced Row Widget with Wrap widget. Doing this we can wrap the widgets regardless of there number and prevent content overflow */ 
          child: Wrap(
            // We can change the direction of wrap using direction property (Horizontal Vertical) 
            direction: Axis.horizontal,
            // algnment property of the Wrap widget is somewhat similar to mainAxisalugnment of Row and Column widget 
          alignment: WrapAlignment.spaceAround,
          // Vertical Direction property determines the direction in we the Widget is viewed 
          verticalDirection: VerticalDirection.up,
        // like the CrossAxis alignment for Row and Column we have runAlignment for the Wrap widget ,
            runAlignment: WrapAlignment.center,
            // This property gives the space between the widgets based on the main alignment of the child 
            spacing: 10,
            // runSpacing is used to give the spacing above and below a child widget 
            runSpacing: 40,
            // TextDirection property changes the direction in which child are arranged. here we have used rtl or right to left so the widgets are arranged from left to right 
            textDirection: TextDirection.rtl ,
            children: <Widget>[
              ElevatedButton(onPressed: (){}, child: Text('Button 1'),),
              ElevatedButton(onPressed: (){}, child: Text('Button 2'),),
              ElevatedButton(onPressed: (){}, child: Text('Button 2'),),
            ],
          ),
        ),
      ),
    );   
  }
}