import 'package:flutter/material.dart';
import 'package:flutter_cinema1/function/rate.dart';

class ListFilm extends StatelessWidget {
  Container listDsFilm(
      String image, String name, String minus, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            child: Image.asset(
              image,
              width: 130,
              height: 130,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                  width: 10,
                ),
                Text(
                  minus,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.download_outlined,
                        color: Colors.yellow[800],
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text('Download',
                          style: TextStyle(
                              fontSize: 15, color: Colors.yellow[800]))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(children: [
                Container(
                  child: Image.asset(
                    'assets/images/ImageDora.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Back",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 90),
                          child: Center(
                            child: Container(
                              child: Image.asset('assets/images/play.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  'Nacros',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Text(
                                'Drama',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
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
                                'Biographical',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
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
                                'Crime Film',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
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
                                'Crime Fiction',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '9.0',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [Rating((rating) {})],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'Netfilix chronecles the rise of the cocaine trade in Colombia and the gripping real-life stories of drug kingpins of the late \'80s in this raw, gritty original series\'',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 200,
                          height: 50,
                          padding: EdgeInsets.all(5),
                          color: Colors.orange[300],
                          child: Container(
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              'WATCH NOW',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Episodes',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                    ],
                  ),
                  Container(
                      child: ListView(
                    shrinkWrap: true, // tự set height cho ListView
                    physics:
                        NeverScrollableScrollPhysics(), // Tự Scroll cha SingleScroll
                    scrollDirection: Axis.vertical,
                    children: [
                      listDsFilm('assets/images/imagenacros.png',
                          '1. The Kingpin Strategy', '54 minus', context),
                      listDsFilm('assets/images/imagenacros.png',
                          '1. The King Strate', '54 minus', context),
                      listDsFilm('assets/images/imagenacros.png',
                          '1. The King Strate', '54 minus', context),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
