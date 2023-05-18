import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}
class _State extends State<MyApp>{

  late List<BottomNavigationBarItem> bottomNavigtionBar;
  String _value="";
  int _index =0;

  @override
  void initState(){
    bottomNavigtionBar = [];
    bottomNavigtionBar.add(const BottomNavigationBarItem(icon: Icon(Icons.people),label: "pepole"));
    bottomNavigtionBar.add(const BottomNavigationBarItem(icon: Icon(Icons.car_crash),label: "car_crash"));
    bottomNavigtionBar.add(const BottomNavigationBarItem(icon: Icon(Icons.headphones),label: "headphones"));
    bottomNavigtionBar.add(const BottomNavigationBarItem(icon: Icon(Icons.monitor_heart),label: "monitor_heart"));
    bottomNavigtionBar.add(const BottomNavigationBarItem(icon: Icon(Icons.ondemand_video),label: "ondemand_video"));

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),


        body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
            ],
          ),
        ),
      ),
      bottomNavigationBar : BottomNavigationBar(
        items: bottomNavigtionBar,
        unselectedItemColor: Colors.green,
        fixedColor: Colors.black,
        currentIndex: _index,
        onTap: (int item){
            setState(() {
              _index = item;
              _value = "Currentlly : $_index";
            });
        },
      )
    );
  }
}
