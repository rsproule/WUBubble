import 'package:flutter/material.dart';
import './Search.dart' as search;

class AllClassesView extends StatelessWidget {
  Widget build(BuildContext context) {
    return new ListView(
        children: <Widget>[
          new search.SearchView(),
          new Divider(),
          new ListTile(
              title: new Text("My First Class"),
              leading: new Icon(Icons.school),
              subtitle: new Text("Professor Blah Blah"),
              trailing: new IconButton(
                  icon: new Icon(Icons.add), onPressed: null)
          ),
          new Divider(),
          new ListTile(title: new Text("My Second Class"),
              leading: new Icon(Icons.school),
              subtitle: new Text("Professor Blah Blah"),
              trailing: new IconButton(
                  icon: new Icon(Icons.add), onPressed: null)
          ),
          new Divider(),
          new ListTile(
              title: new Text("My Third Class"),
              leading: new Icon(Icons.school),
              subtitle: new Text("Professor Blah Blah"),
              trailing: new IconButton(
                  icon: new Icon(Icons.add), onPressed: null)
          ),

          new Divider()
        ]
    );
  }
}
