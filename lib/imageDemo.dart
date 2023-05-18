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
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Images"),
              Expanded(child: Image.asset('images/3204121.jpg')),
              Expanded(child: Image.network('https://img.freepik.com/free-vector/marketing-concept-illustration_114360-3903.jpg?t=st=1684308211~exp=1684308811~hmac=2c51d9ec3b3e13325ecf6fbf2f792022a1a294b0ccd5b4fb462882945dd19dc4'))
            ],
          ),
        ),
      ),
    );

  }
}
