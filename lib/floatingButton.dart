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

  String _value = "";

  void _onClick(){
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        mini: false, // for big icon and true for small icon
        child: Icon(Icons.timer),
        backgroundColor: Colors.redAccent,
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
    );

  }
}
