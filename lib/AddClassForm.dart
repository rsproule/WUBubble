import 'dart:async';
import 'package:flutter/material.dart';

class AddClassForm extends StatelessWidget {

  Widget build(BuildContext context) {
    return (
        new Form(
          child: new Column(
              children: <Widget>[
                new Divider(),

                new TextFormField(
                  //name of new class
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.school),
                      hintText: "Class Name (i.e. 'CSE 131')",
                      hideDivider: true,

                    )
                ),
                new Divider(),
                new TextFormField(
                  //name of new class
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.school),
                      hintText: "Class Title (i.e. 'Intro to Computer Science')",
                      hideDivider: true,

                    )
                ),
                new Divider(),
                new TextFormField(
                  //name of new class
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.person),
                      hintText: "Professor Name",
                      hideDivider: true,

                    )
                ),
                new Divider(),
                new Divider(color: Colors.white),
                new MaterialButton(
                    color: Colors.blue,
                    onPressed: () => _submitClass(context),
                    elevation: 10.0,

                    highlightColor: Colors.blueGrey,
                    highlightElevation: 5.0,
                    child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Icon(Icons.add, color: Colors.white),
                          new Text("Submit Class",
                              style: new TextStyle(color: Colors.white))
                        ]
                    )
                ),
                new Center(

                        child: new Column(
                            children: <Widget>[

                              new Padding(
                                padding: new EdgeInsets.all(25.0),
                                child: new Text(
                                  "Be sure to check if a class exists already"
                                      " before adding a class.",
                                  textAlign: TextAlign.center,

                                ),

                              ),
                            ]
                        )


                ),


              ]
          ),
        )

    );
  }

   _submitClass(BuildContext context) {
    const timeout = const Duration(seconds: 3);
    Timer timer = new Timer(timeout, () => callback(context));

    showDialog(
      child: new Dialog(

          child: new ConstrainedBox(
              constraints: new BoxConstraints(
                maxHeight: 100.1,
                maxWidth: 10.1,
                minHeight: 100.0,
                minWidth: 10.0,
              ),
              child: new Column(
                children: <Widget> [
                  new Divider(color: Colors.white),
                  new Text("Submitting Class...", textAlign: TextAlign.center),
                  new Divider(color: Colors.white, height: 12.0),
                  new CircularProgressIndicator()
                ]
              )
          )
      ),
      context: context,

    );

    return timer;
  }

  void callback(context){
    Navigator.of(context).pop();
    showDialog(
      child: new Dialog(

          child: new ConstrainedBox(
              constraints: new BoxConstraints(
                maxHeight: 100.1,
                maxWidth: 10.1,
                minHeight: 100.0,
                minWidth: 10.0,
              ),
              child: new Column(
                  children: <Widget> [
                    new Divider(color: Colors.white),
                    new Text("Submitted Successfully!", textAlign: TextAlign.center),
                    new Divider(color: Colors.white, height: 12.0),
                    new Icon(Icons.check, size: 50.0, color: Colors.green)
                  ]
              )
          )
      ),
      context: context,

    );
  }
}
