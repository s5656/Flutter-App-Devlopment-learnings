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

  void _showPopup(){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context){
          return Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Some Info Here", style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),),
                ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Close"))
              ],
            ),
          );
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
              Text("Add Widget"),
              ElevatedButton(onPressed: _showPopup, child: Text('Click me'))
            ],
          ),
        ),
      ),
    );

  }
}
