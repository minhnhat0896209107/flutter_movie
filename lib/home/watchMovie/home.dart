import 'package:flutter/material.dart';
import 'package:flutter_cinema1/function/rate.dart';
import 'package:flutter_cinema1/home/watchMovie/information.dart';
import 'package:flutter_cinema1/home/watchMovie/listfilm.dart';
import 'package:flutter_cinema1/home/watchMovie/watch_movie.dart';

class Home extends StatelessWidget {
  Container myArticles(String imageVal) {
    return Container(
      width: 130,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(
              imageVal,
              width: 130,
              height: 140,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: InkWell(
                    child: new Container(
                      height: 480,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new ExactAssetImage(
                          "assets/images/Image.png",
                        ),
                      )),
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: new LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              // stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WatchMovie()));
                    },
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text('4.0',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Column(children: [Rating((rating) {})])
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Information(),
                              )),
                          child: Text(
                            'Movie',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 2,
                          height: 17,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Adventure',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 2,
                          height: 17,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Comedy',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 2,
                          height: 17,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Family',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'Watching',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                              height: 140,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  InkWell(
                                    child: myArticles(
                                        'assets/images/imagenacros.png'),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ListFilm()));
                                    },
                                  ),
                                  myArticles('assets/images/imagenacros.png'),
                                  myArticles('assets/images/imagenacros.png'),
                                  myArticles('assets/images/imagenacros.png'),
                                  myArticles('assets/images/imagenacros.png'),
                                  myArticles('assets/images/imagenacros.png'),
                                ],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
