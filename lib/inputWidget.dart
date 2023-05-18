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
  String inputField = "";
  void _onChange(String value){
  setState(() => {inputField= "Change: $value"});
  }

  void _onSubmit(String value){
    setState(() => {inputField= "Submit: $value"});
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
              Text(inputField),
              TextField(
                decoration: const InputDecoration(
                  labelText: "hello",
                  hintText: "hint",
                  icon: Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              )
            ],
          ),
        ),
      ),
    );

  }
}
