import 'package:flutter/material.dart';
import 'dart:async';
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

  String _value = '';

  Future _selectDate() async{
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate:DateTime(2024)
    );

    if(picked != null) {
      setState(() {
      _value = picked.toString();
    });
    }
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
              ElevatedButton(onPressed: _selectDate, child: Text("click me"))
            ],
          ),
        ),
      ),
    );

  }
}
