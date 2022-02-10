import 'package:flutter/material.dart';
import 'package:flutter_cinema1/home/dowload.dart';
import 'package:flutter_cinema1/home/watchMovie/home.dart';
import 'package:flutter_cinema1/home/profile.dart';
import 'package:flutter_cinema1/home/search.dart';

class HomeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 4, child: HomeMainStatefulWidget()));
  }
}

/// This is the stateful widget that the main application instantiates.
class HomeMainStatefulWidget extends StatefulWidget {
  @override
  State<HomeMainStatefulWidget> createState() => _HomeMainStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _HomeMainStatefulWidgetState extends State<HomeMainStatefulWidget> {
  final PageController _pageController = PageController();
  Size _size;
  int _currentTab = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  void _onTappedBar(int value) {
    setState(() {
      _currentTab = value;
    });

    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [Home(), Search(), Download(), Profile()],
        onPageChanged: (page) {
          setState(() {
            _currentTab = page;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _onTappedBar(0);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              _currentTab == 0 ? Colors.orange : Colors.white,
                          size: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          'HOME',
                          style: TextStyle(
                            color:
                                _currentTab == 0 ? Colors.orange : Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _onTappedBar(1);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color:
                              _currentTab == 1 ? Colors.orange : Colors.white,
                          size: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          'SEARCH',
                          style: TextStyle(
                            color:
                                _currentTab == 1 ? Colors.orange : Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _onTappedBar(2);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_download,
                          color:
                              _currentTab == 2 ? Colors.orange : Colors.white,
                          size: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          'DOWLOAD',
                          style: TextStyle(
                            color:
                                _currentTab == 2 ? Colors.orange : Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currenScreen = Profile();
                        _onTappedBar(3);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color:
                              _currentTab == 3 ? Colors.orange : Colors.white,
                          size: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          'PROFILE',
                          style: TextStyle(
                            color:
                                _currentTab == 3 ? Colors.orange : Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
