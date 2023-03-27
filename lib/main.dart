import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //Mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.cyan),
            tabs: [
              Tab(icon: Icon(Icons.local_cafe_sharp)),
              Tab(icon: Icon(Icons.local_cafe_outlined)),
              Tab(icon: Icon(Icons.local_cafe)),
              Tab(icon: Icon(Icons.local_cafe_rounded)),
            ],
          ),
          title: Text('Tabs Alejandro Garcia'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.local_cafe_sharp, size: 350),
            Icon(Icons.local_cafe_outlined, size: 350),
            Icon(Icons.local_cafe, size: 350),
            Icon(Icons.local_cafe_rounded, size: 350),
          ],
        ),
      ),
    );
  }
} //Fin de _MyHomePageState State
