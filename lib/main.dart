import 'package:flutter/material.dart';import './Academics.dart' as SchoolPage;import './SocialPage.dart' as Social;import './JobsPage.dart' as Jobs;import './Drawer.dart' as _Drawer;import './Search.dart' as Search;void main() {  runApp(new MaterialApp(      home: new App(),      routes: <String, WidgetBuilder>{        "/search": (BuildContext context) => new Search.SearchView(),        "/test" : (BuildContext context) => new Text("Success!")      }  ));}class App extends StatefulWidget {  @override  AppState createState() => new AppState();}class AppState extends State<App> {  void showSearch() {    setState(() {      currPage = new Column(          children: <Widget>[            new Search.SearchView(),            new Divider(),            new Expanded(                child: pages[currentPageIndex] // pretty janky way to get the search bar above            ),          ]      );    });  }  List<Widget> pages = [    new SchoolPage.SchoolPage(), new Social.SocialPage(), new Jobs.JobsPage()];  int currentPageIndex = 0;  Widget currPage = new SchoolPage.SchoolPage();  @override  Widget build(BuildContext context) {    return new Scaffold(        bottomNavigationBar: new BottomNavigationBar(          onTap: (int index) {            setState(() {              currentPageIndex = index;              currPage = pages[currentPageIndex];            });          },          items: <BottomNavigationBarItem>[            new BottomNavigationBarItem(                icon: new Icon(Icons.assignment), title: new Text("School"), backgroundColor: Colors.red),            new BottomNavigationBarItem(                icon: new Icon(Icons.people), title: new Text("Social"), backgroundColor: new Color.fromRGBO(210, 213, 219, 1.0)),            new BottomNavigationBarItem(                icon: new Icon(Icons.work), title: new Text("Work"), backgroundColor: new Color.fromRGBO(210, 213, 219, 1.0)),          ],          currentIndex: currentPageIndex,        ),        appBar: new AppBar(            backgroundColor: Colors.blue,            title: new Text("WU Bubble"),//            actions: <Widget>[//              new IconButton(//                  icon: new Icon(Icons.search),//                  onPressed: showSearch//              )//            ]        ),        drawer: new _Drawer.MainDrawer("Home"),        body: currPage    );  }}