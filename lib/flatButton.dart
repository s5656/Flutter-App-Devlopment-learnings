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

  String _value = "Hello World !";

  void _onPressed(){
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
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              ElevatedButton(onPressed: _onPressed, child: const Text("Click on Eleveted Button")),
              TextButton(onPressed: _onPressed, child: const Text("Click on Flat Button")),
              OutlinedButton(onPressed: _onPressed, child: const Text("Click on Flat Button"))
            ],
          ),
        ),
      ),
    );

  }
}
