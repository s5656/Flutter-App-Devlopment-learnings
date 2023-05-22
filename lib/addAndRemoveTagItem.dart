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

  int count = 0;
  List <Widget>  widgetList = <Widget>[];

  @override
  void initState(){
    for(int i = 0;i< 5;i++){
      Widget child = _newItem(i);
      widgetList.add(child);
    }
  }

  void _onClick(){
    Widget child = _newItem(count);
    setState(() {
      widgetList.add(child);
    });
  }
  Widget _newItem(int i) {
    Key key = Key('Item $i');
    Container childContainer = Container(
      key: key,
      padding: EdgeInsets.all(12),
      child: Chip(
        label: Text("$i Name Here"),
        deleteIconColor: Colors.red,
        deleteButtonTooltipMessage: 'Delete',
        onDeleted: ()=> _removeItem(key),
        avatar: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(i.toString()),
        ),
      ),
    );
    count++;
    return childContainer;
  }

  void _removeItem(Key key) {
    for(int i =0; i<widgetList.length;i++){
      Widget childKey = widgetList.elementAt(i);
      if(key == childKey.key){
        setState(() =>
        widgetList.removeAt(i)
        );}
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title:const Text("Home Here")
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        child: Icon(Icons.add_box),
      ),


      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                children: List<Widget>.from(widgetList),
              ),
          ),
        ),
      ));

    }

}
