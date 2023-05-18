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
  bool _value1 = false ,value2=false;

  void value1Changed(bool? value){
    setState(() {
      _value1=value!;
    });
  } //in dart you can put any one of this { }  or  => both works same

  void value2Changed(bool? value) => setState(() => value2=value!);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Checkbox(value: _value1, onChanged: value1Changed),
              CheckboxListTile(
                  value: value2,
                  onChanged: value2Changed,
                title: const Text("select me"),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: const Text("Hey"),
                secondary: const Icon(Icons.ac_unit_sharp),
                activeColor: Colors.deepOrange,
              )
            ],
          ),
        ),
      );
  }
}
