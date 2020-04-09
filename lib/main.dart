import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X9Cinema',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

// Data
  List<String> movieimages = [
    "assets/images/drive.jpg",
    "assets/images/madmax.jpg",
    "assets/images/fvf.jpg",
    "assets/images/interstellar.jpg",
  ];

  List<String> movietitles = ["DRIVE", "MAD MAX", "FORD V FERRARI", "INTERSTELLAR"];
  List<String> moviesubtitles = ["Ryan Gosling", "Tom Hardy", "Christian Bale", "Matthew McC"];

  List<Widget> movie() {
    List<Widget> movieList = new List();

    for(int i = 0; i< 4; i++){
      var movieItem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        child: Container(
          height: 150.0,
          width: 270.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.transparent
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                child: Image.asset(
                  movieimages[i],
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                child: new DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: FractionalOffset.bottomLeft,
                      end: FractionalOffset.topCenter,
                      colors: [
                        Colors.black87,
                        Colors.transparent
                      ]
                    ),
                  )
                )
              ),
              Positioned(
                top: 240.0, left: 20.0,
                child: Text(
                  movietitles[i],
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Proxima"
                  ),
                ),
              ),
              Positioned(
                top: 268.0, left: 20.0,
                child: Text(
                  moviesubtitles[i],
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: "Proxima"
                  ),
                ),
              ),
              Positioned(
                top: 295, left: 20.0,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star_half, color: Colors.white),
                  ],
                ),
              ),
              Positioned(
                top: 295.0, right: 20.0,
                child: Icon(
                  Icons.bookmark,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 20.0, right: 20.0,
                child: Icon(
                  Icons.more_horiz,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
            overflow: Overflow.clip,
          ),
        ),
      );
      movieList.add(movieItem);
    }
    return movieList;
  }

  // BTW these are my Fav. Series
  List<String> seriesimages = [
    "assets/images/daredevil.jpg",
    "assets/images/Lucifer.jpg",
    "assets/images/got.jpg",
    "assets/images/breakingBad.jpg",
  ];

  List<String> seriestitles = ["DAREDEVIL", "LUCIFER", "GAME OF THRONES", "BREAKING BAD"];

 List<Widget> series() {
    List<Widget> seriesList = new List();

    for(int i = 0; i< 4; i++){
      var seriesItem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        child: Container(
          height: 150.0,
          width: 270.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.transparent
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                child: Image.asset(
                  seriesimages[i],
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                child: new DecoratedBox(
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: FractionalOffset.bottomLeft,
                      end: FractionalOffset.topCenter,
                      colors: [
                        Colors.black87,
                        Colors.transparent
                      ]
                    ),
                  )
                )
              ),
              Positioned(
                top: 260.0, left: 20.0,
                child: Text(
                  seriestitles[i],
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Proxima"
                  ),
                ),
              ),
              Positioned(
                top: 295, left: 20.0,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star, color: Colors.white),
                    Icon(Icons.star_half, color: Colors.white),
                  ],
                ),
              ),
              Positioned(
                top: 295.0, right: 20.0,
                child: Icon(
                  Icons.bookmark,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 20.0, right: 20.0,
                child: Icon(
                  Icons.more_horiz,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
            overflow: Overflow.clip,
          ),
        ),
      );
      seriesList.add(seriesItem);
    }
    return seriesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f6),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "X9",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: "Proxima"
                        ),
                      ),
                      Text(
                        "CINEMA",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: "Proxima"
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.search
                      ),
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.menu
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25.0),
              child: Container(
                height: 70.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 55,
                          width: 180,
                          child: RaisedButton(
                            child: Text(
                              "Recommended",
                              style: TextStyle(
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),
                            ),
                            textColor: Colors.white,
                            color: Color(0xfffd0a4c),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(22.0),
                              side: BorderSide(color: Color(0xfffd0a4c))
                            ),
                          ),
                        ),
                        SizedBox(width: 25.0,),
                        Text("Netflix", style: TextStyle(fontFamily: "Proxima", fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                        SizedBox(width: 25.0,),
                        Text("HBOGO", style: TextStyle(fontFamily: "Proxima", fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                        SizedBox(width: 25.0,),
                        Text("Amazon Prime", style: TextStyle(fontFamily: "Proxima", fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                        SizedBox(width: 25.0,),
                        Text("HULU", style: TextStyle(fontFamily: "Proxima", fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                        SizedBox(width: 25.0,),
                        Text("Hotstar", style: TextStyle(fontFamily: "Proxima", fontWeight: FontWeight.bold,
                        fontSize: 20.0),),
                        SizedBox(width: 25.0,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 25),
                child: Text(
                  "Movies",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Proxima",
                    fontSize: 24
                  ),
                ),              
              ),
            ),
            Container(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: movie(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 25),
                child: Text(
                  "Series",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Proxima",
                    fontSize: 24
                  ),
                ),              
              ),
            ),
            // Similar for Series
            Container(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: series(), 
                // Also can use the movie list function for series using function paramerteres
              ),
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: [
          // Using Material Icons instead of Custom Icons, Resource limitation
          BottomNavigationBarItem(
            icon: Icon(Icons.movie, color: Color(0xfffd0c4b),),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("")
          ),
        ]
      ),
    );
  }
}