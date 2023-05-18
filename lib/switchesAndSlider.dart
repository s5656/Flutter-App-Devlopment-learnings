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
  bool _value1 = false , _value2=false;

  void _onChange1(bool value) => setState(() {
    _value1 = value;
  });

  void _onChange2(bool value) => setState(() {
    _value2 = value;
  });

  double _sliderValue = 0;

  void _onChange3(double value) => setState(() {
    _sliderValue=value;
  });


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
              Switch(value: _value1, onChanged: _onChange1),
              SwitchListTile(
                value: _value2,
                onChanged: _onChange2,
                title: Text("Switch",
                style: TextStyle(color: Colors.yellowAccent,
                backgroundColor: Colors.deepOrange,
                fontWeight: FontWeight.bold),
                ),
                secondary: Icon(Icons.accessibility_new_rounded),
              ),
              Text("Value ${(_sliderValue*100).round()}"),
              Slider(value: _sliderValue, onChanged: _onChange3)
            ],
          ),
        ),
      ),
    );

  }
}
