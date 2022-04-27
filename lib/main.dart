import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Tugas 3',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(primarySwatch: Colors.blue, appBarTheme: AppBarTheme(color: Colors.white)),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Add Product'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title, style: TextStyle(fontSize: 28, color: Colors.blue, fontWeight: FontWeight.bold)),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.grey),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(24),
          child: Column(children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text("Product Information", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
            const Divider(
              height: 15,
              thickness: 0.5,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            Container(
                margin: EdgeInsets.only(
                  top: 8,
                  bottom: 6,
                ),
                child: Align(alignment: Alignment.centerLeft, child: Text('Product Image', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
            Container(
                height: 150,
                child: Center(child: Icon(Icons.add, color: Colors.blue, size: 30)),
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    border: Border.all(
                      color: Colors.blue,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                      ),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Product Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Shoes101',
                    ),
                  ),
                ])),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                      ),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Product ID', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'NK–200',
                    ),
                  ),
                ])),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                      ),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Price', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Rp.1.000.000',
                    ),
                  ),
                ])),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                      ),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Stock', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: '10',
                    ),
                  ),
                ])),
            Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 6,
                      ),
                      child: Align(alignment: Alignment.centerLeft, child: Text('Description', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)))),
                  TextField(
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Enter a description...',
                    ),
                    maxLines: 5,
                    minLines: 1,
                  ),
                ])),
            ButtonTheme(
                minWidth: double.infinity,
                height: 60.0,
                child: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: RaisedButton(
                        child: Text('Add Product',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {})))
          ]),
        )));
  }
}
