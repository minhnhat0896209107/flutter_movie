import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  Container myArticles(String imageVal) {
    return Container(
      width: 120,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              imageVal,
              width: 130,
              height: 130,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            child: Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      "BACK",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset('assets/images/Michaelpena.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Michael\n  Pena',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ]),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
            child: Center(
              child: Text(
                'Michael Pena was born and raised in Chicago, to Nicolasa, a social worker,'
                'and Eleuterio Pena, who worked at a button factory. His parents were originally from Mexico',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Know for',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('assets/images/Michaelpena.png'),
                      Image.asset('assets/images/Michaelpena.png'),
                      Image.asset('assets/images/Michaelpena.png')
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
}
