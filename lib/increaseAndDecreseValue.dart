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

  int _value = 0;
  void _add(){
    setState(() {
      _value++;
    });
  }
  void _subtract(){
    setState(() {
      _value--;
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
              Text("Value = $_value"),
              IconButton(onPressed: _add, icon:const Icon(Icons.add)),
              IconButton(onPressed: _subtract, icon:const Icon(Icons.remove))
            ],
          ),
        ),
      ),
    );

  }
}
