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

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),

      drawer: Drawer(
        child: Container(
          padding: new EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text("Hello"),
              ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Close"))
            ],
          ),
        ),
      ),


      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Hello"),
            ],
          ),
        ),
      ),
    );

  }
}
