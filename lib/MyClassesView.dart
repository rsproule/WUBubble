import 'package:flutter/material.dart';
import './ClassPage.dart' as classPage;

class MyClassesView extends StatelessWidget {

  Widget build(BuildContext context) {
    return (
        new ListView(
            children: <Widget>[
              new ListTile(
                  title: new Text("My First Class"),
                  leading: new Icon(Icons.school),
                  subtitle: new Text("Professor Blah Blah"),
                  trailing: new Icon(
                      Icons.notifications, color: Colors.redAccent),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new classPage.ClassPage("My First Class");
                        }
                    )
                    );
                  },
                  onLongPress: () {
                    showDialog(
                        context: context,
                        child: new Dialog(

                            child: new ConstrainedBox(
                                constraints: new BoxConstraints(
                                  maxHeight: 100.1,
                                  maxWidth: 10.1,
                                  minHeight: 100.0,
                                  minWidth: 10.0,
                                ),

                                child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      new Icon(Icons.school),
                                      new Text("My First Class"),
                                      new Text("Last Post: What is the HW for today?")
                                    ]
                                )
                            )
                        )
                    );
                  }

              ),

              new Divider(),
              new ListTile(title: new Text("My Second Class"),
                  leading: new Icon(Icons.school),
                  subtitle: new Text("Professor Blah Blah"),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new classPage.ClassPage("My Second Class");
                        }
                    )
                    );
                  }
              ),
              new Divider(),
              new ListTile(
                  title: new Text("My Third Class"),
                  leading: new Icon(Icons.school),
                  subtitle: new Text("Professor Blah Blah"),
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new classPage.ClassPage("My Third Class");
                        }
                    )
                    );
                  }
              ),

              new Divider()
            ]
        )
    );
  }
}