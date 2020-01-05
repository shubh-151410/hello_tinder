import 'package:flutter/material.dart';

class TinderCard extends StatefulWidget {
  //static List<Widget> cardview = List<Widget>();
  @override
  _TinderCardState createState() => _TinderCardState();
}

class _TinderCardState extends State<TinderCard> {

  List<Widget> cardview  = List<Widget>();
  int i=0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    cardview = [tindercard(),tindercardOne(),tindercardTwo(),tindercardThree()];
    return Draggable(
      axis: Axis.horizontal,
      affinity: Axis.horizontal,
      child: (i>=cardview.length)?Container(child: Text("No Card"),):cardview[i],feedback: (i>=cardview.length)?Container(child: Text("No Card"),):cardview[i],
      onDragStarted: (){
      print("@@@@@@@@@@@@@");
      },

      onDragEnd: (drag){
       this.setState(() {

         print(drag.offset.dx);
         print(drag.offset.direction);
         i+=1;
       });

      },

      onDragCompleted: (){
      print("!!!!!!!!!!!");

      },
      childWhenDragging: (i>=cardview.length)?Container(child: Text("No Card"),):cardview[i],);
  }

  Widget tindercard(){
    return Container(
        margin: EdgeInsets.fromLTRB(4.0, 10.0, 4.0,0),
        height: 400,
        width: MediaQuery.of(context).size.width,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),

          ),
          elevation: 5.0,
          child: Stack(
              children: <Widget>[

                Positioned.fill(  //
                  child: Image(
                    image: AssetImage('assets/download.jpeg'),
                    fit : BoxFit.fill,
                  ),
                ),


                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("ABCD",style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5.0,),

                                Text("25",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text("4 Km away",style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),)

                              ],
                            ),

                          ]

                      ),
                    )


                ),
              ]
          ),
        ));
  }
  Widget tindercardOne(){
    return Container(
        margin: EdgeInsets.fromLTRB(4.0, 10.0, 4.0,0),
        height: 400,
        width: MediaQuery.of(context).size.width,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),

          ),
          elevation: 5.0,
          child: Stack(
              children: <Widget>[

                Positioned.fill(  //
                  child: Image(
                    image: AssetImage('assets/download.jpeg'),
                    fit : BoxFit.fill,
                  ),
                ),


                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("Efgh",style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5.0,),

                                Text("25",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text("4 Km away",style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),)

                              ],
                            ),

                          ]

                      ),
                    )


                ),
              ]
          ),
        ));
  }
  Widget tindercardTwo(){
    return Container(
        margin: EdgeInsets.fromLTRB(4.0, 10.0, 4.0,0),
        height: 400,
        width: MediaQuery.of(context).size.width,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),

          ),
          elevation: 5.0,
          child: Stack(
              children: <Widget>[

                Positioned.fill(  //
                  child: Image(
                    image: AssetImage('assets/download.jpeg'),
                    fit : BoxFit.fill,
                  ),
                ),


                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("XYERT",style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5.0,),

                                Text("25",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text("4 Km away",style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),)

                              ],
                            ),

                          ]

                      ),
                    )


                ),
              ]
          ),
        ));
  }
  Widget tindercardThree(){
    return Container(
        margin: EdgeInsets.fromLTRB(4.0, 10.0, 4.0,0),
        height: 400,
        width: MediaQuery.of(context).size.width,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),

          ),
          elevation: 5.0,
          child: Stack(
              children: <Widget>[

                Positioned.fill(  //
                  child: Image(
                    image: AssetImage('assets/download.jpeg'),
                    fit : BoxFit.fill,
                  ),
                ),


                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("EWQQWE",style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5.0,),

                                Text("25",style: TextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,color: Colors.white,),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text("4 Km away",style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),)

                              ],
                            ),

                          ]

                      ),
                    )


                ),
              ]
          ),
        ));
  }
}