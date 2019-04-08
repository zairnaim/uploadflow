import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _showSecondaryBottomBar = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showhideBottomBar() {
    setState(() {
      _showSecondaryBottomBar = _showSecondaryBottomBar ? false :  true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _showSecondaryBottomBar
          ? imageeditor()
          : Container(
              child: Text("Hello"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showhideBottomBar,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: mainbottombar(),
    );
  }
}

class imageeditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          secondarybottombar(),
          secondarybottombar(),
        ],
        // children: <Widget>[
        //   Column(

        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.end,
        //   ),
        //   secondarybottombar(),
        //
      ),
    );
  }
}

class mainbottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit_attributes),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.crop),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.straighten),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class secondarybottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.rotate_left),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_photo_alternate),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
