import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  Container nameImage(String name, String infomation) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              infomation,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }

  Container myImage(String image) {
    return Container(
      width: 150,
      child: Row(children: [
        Container(
          child: Image.asset(
            image,
            width: 130,
            height: 130,
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/ImageDora.png'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
              Row(
                children: [
                  myImage('assets/images/teaserfilm.jpeg'),
                  nameImage('Nacros', '4 Episodes | 5.02GB')
                ],
              ),
            ],
          ),
        ));
  }
}
