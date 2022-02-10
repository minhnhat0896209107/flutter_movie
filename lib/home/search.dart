import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  TextEditingController search = TextEditingController();
  Container title(String name, BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Container myImage(String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      child: Row(
        children: [Image.asset(image, width: 130, height: 130)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                child: TextField(
                    controller: search,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff212121),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(
                              color: Color(0xffe5e9f0)), // vien' TextField
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)))),
              ),
              title('TV SHOWS', context),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myImage('assets/images/Michaelpena.png'),
                    myImage('assets/images/Michaelpena.png'),
                    myImage('assets/images/Michaelpena.png'),
                    myImage('assets/images/Michaelpena.png'),
                    myImage('assets/images/Michaelpena.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              title('MOVIES', context),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              title('ADVANTURE', context),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              title('COMEDY', context),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              title('FAMILY', context),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png'),
                    myImage('assets/images/imagenacros.png')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
