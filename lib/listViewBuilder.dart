import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  Map countries = Map();

  void _getData() async{
    var url = 'http://country.io/names.json';

    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      setState(() {
        countries = json.decode(response.body);
        print('Loaded ${countries.length}');
      });
    }
  }


  @override
  Widget build(BuildContext context){

    //_getData();

    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text("Countries :" ,style: TextStyle(fontWeight: FontWeight.bold,)),
              Expanded(child: ListView.builder(
                itemCount: countries.length,
                itemBuilder : (BuildContext context , int index){
                String key = countries.keys.elementAt(index);
                return Row(children: [
                  Text('$key : '),
                  Text(countries[key])
                ],);
              }))
            ],
          ),
        ),
      ),
    );

  }
  @override
  void initState(){
    _getData();
  }
}
