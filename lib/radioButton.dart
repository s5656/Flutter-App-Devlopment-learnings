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

  int _value1 = 0;
  int _value2 = 0;

  void _value1Set(int? value) => setState(() {_value1=value!;});
  void _value2Set(int? value) => setState(() {_value2=value!;});

  Widget createRadioButton(){
    List<Widget> widgetList = <Widget>[];

    for(int i =0 ;i<3;i++){
      widgetList.add(Radio(value: i, groupValue: _value1, onChanged: _value1Set));
    }

    Column column = Column(children: widgetList,);

    return column;
  }

  Widget createNewRadioTileButton(){
    List<Widget> widgetList = <Widget>[];

    for(int i =0 ;i<3;i++){
      widgetList.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _value2Set,
        activeColor: Colors.cyan,
        title: Text("new world"),
        subtitle: Text("world"),

      ));
    }

    Column column = Column(
      children: widgetList,);

    return column;
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
              createRadioButton(),
              createNewRadioTileButton()
            ],
          ),
        ),
      ),
    );

  }
}
