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

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

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
              
              Card(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Text('Hello'),
                      Text('Welcome to Flutter')
                    ],
                  ),
                ),
              ),
              
              Text("Please Enter Login Credential"),
              Row(
                children: [
                  Text('Username : '),
                  Expanded(child: TextField(controller: _username,))
                ],
              ),
              Row(
                children: [
                  Text('Password : '),
                  Expanded(child: TextField(controller: _password,obscureText: true,))
                ],
              ),
              Padding(padding: EdgeInsets.all(30),child: ElevatedButton(onPressed: ()=> print("object"),child: Text('Click Me'),),)
            ],
          ),
        ),
      ),
    );

  }
}
