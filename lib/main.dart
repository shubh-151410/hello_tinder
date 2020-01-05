import 'package:flutter/material.dart';
import './tinder_card.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    
    
    
    
    
    return Scaffold(
      backgroundColor: Color(0xffEAF0F1),
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TinderCard(),

          Container(
            margin: EdgeInsets.only(left: 20.0,top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  child: ClipOval(
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      width: 50,
                      child: Center(child: Text("Like")),
                    ),
                  ),
                ),
                InkWell(
                  child: ClipOval(

                    child: Container(
                      color: Colors.white,
                      height: 50,
                        width: 50,
                        child: Center(child: Text("Dislike"))),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
