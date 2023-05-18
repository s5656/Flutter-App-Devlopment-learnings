import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home:new MyApp()
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();

}
class _State extends State<MyApp>{

  String _value = "Hello World !";
  void onClick(){
    setState(() {
      _value="I am Sumit";
    });
  }
  void _onPressed(String value){
    setState(() {
      _value=value;
    });
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
              ElevatedButton(onPressed: () => _onPressed("Hello Sumit"), child: const Text("Click")),
              ElevatedButton(onPressed:onClick, child: const Text("Click"))
            ],
          ),
        ),
      ),
    );

  }
}
