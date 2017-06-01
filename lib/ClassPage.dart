import 'package:flutter/material.dart';
import './Search.dart' as search;


class ClassPage extends StatelessWidget{
  String className = "";

  //eventually will pull in the class id so
  // that the rest of the class data can be fetched
  // ie the questions and meta data about them
  ClassPage(String s){
    this.className = s;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(className),
          actions: <Widget>[
            new IconButton(icon: new Icon(
                Icons.info, color: Colors.white),
                onPressed: null)
          ]
      ),
      body: new ListView(
          children: <Widget>[
            new search.SearchView(),
            new ListTile(
                title: new Text("Question/Post 1")),
            new Divider(),
            new ListTile(
                title: new Text("Question/Post 2")),
            new Divider(),
            new ListTile(
                title: new Text("Question/Post 3")),
            new Divider(),
            new ListTile(
                title: new Text("Question/Post 4")),
            new Divider(),
            new ListTile(
                title: new Text("Question/Post 5")),
            new Divider(),
            new ListTile(
                title: new Text("Question/Post 6")),
            new Divider(),

          ]
      ),
      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(
            Icons.create, color: Colors.blueGrey),
            onPressed: null),

      ],


    );
  }
}