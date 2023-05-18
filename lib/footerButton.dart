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

  void _onClick(String value) => setState(() {
    _value=value;
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),

      persistentFooterButtons:<Widget>[
        IconButton(onPressed:()=> _onClick("Back Button"), icon: Icon(Icons.backspace_outlined)),
        IconButton(onPressed:()=> _onClick("Home"), icon: Icon(Icons.home)),
        IconButton(onPressed:()=> _onClick("Row"), icon: Icon(Icons.table_rows_outlined)),
        IconButton(onPressed:()=> _onClick("Map"), icon: Icon(Icons.map)),

      ] ,

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
