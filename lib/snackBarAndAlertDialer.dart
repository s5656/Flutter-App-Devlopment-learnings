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

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  Future<void> _showAlert(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }


  void _showBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("OTP sent on your number")),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldState,
      appBar: AppBar(
      title:const Text("Home Here")
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('Click to get Otp'),
              ElevatedButton(onPressed: _showBar, child: Text('Click me')),

              TextButton(onPressed: ()=> _showAlert(context, "Do you like Flutter,I Do "), child: const Text('Click On Me to get alert'))]
          ),
        ),
      ),
    );

  }
}
