import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  int _state = 0;
  Animation _animation;
  AnimationController _controller;
  GlobalKey _globalKey = GlobalKey();
  double _width2 = double.maxFinite;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: menuBawah(),
      backgroundColor: Colors.white,
      body: Container(
        height: _height,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              height: _height / 4.5,
              width: _width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.blueAccent]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              padding: const EdgeInsets.only(bottom: 30.0, left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 30.0),
                    child: Image.asset(
                      "assets/images/unmaku.png",
                      scale: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: _height / 6,
              right: 0.0,
              left: 0.0,
              bottom: 5.0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: _height / 3.5,
                          width: _width / 1.1,
                          child: Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                                      ),
                                      Text('Rifa Nurfalah'),
                                      Text('19.14.1.0012'),
                                      Text('Semester Aktif : 2020/2021 Genap'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: _width / 1.1,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: Card(
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                        left: 5.0,
                                        right: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushNamed('/datadiri');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          color: Colors.black,
                                                          width: 0.1))),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10.0,
                                                            left: 10.0),
                                                    child: Icon(Icons.person,
                                                        size: _width / 10),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'Data Diri',
                                                      style: TextStyle(
                                                          fontSize:
                                                              _width / 20),
                                                    ),
                                                  ),
                                                  Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: _width / 15)
                                                ],
                                              ),
                                            )),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed('/akademik');
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: Colors.black,
                                                        width: 0.1))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10.0,
                                                          left: 10.0),
                                                  child: Icon(Icons.work_sharp,
                                                      size: _width / 10),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Akademik',
                                                    style: TextStyle(
                                                        fontSize: _width / 20),
                                                  ),
                                                ),
                                                Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    size: _width / 15)
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context)
                                                .pushNamed('/dokumen');
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0, left: 10.0),
                                                child: Icon(
                                                    Icons.wysiwyg_rounded,
                                                    size: _width / 10),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Dokumen',
                                                  style: TextStyle(
                                                      fontSize: _width / 20),
                                                ),
                                              ),
                                              Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: _width / 15)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: PhysicalModel(
                                elevation: 8,
                                shadowColor: Colors.blue,
                                color: Colors.transparent,
                                child: Container(
                                  key: _globalKey,
                                  height: 48,
                                  width: _width / 1.1,
                                  child: RaisedButton(
                                    animationDuration:
                                        Duration(milliseconds: 1000),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: EdgeInsets.all(0),
                                    child: setUpButtonChild(),
                                    onPressed: () {
                                      setState(() {
                                        if (_state == 0) {
                                          animateButton();
                                        }
                                      });
                                    },
                                    elevation: 4,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  setUpButtonChild() {
    if (_state == 0) {
      return Text(
        "Log Out",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      );
    } else if (_state == 1) {
      return SizedBox(
        height: 36,
        width: 36,
        child: CircularProgressIndicator(
          value: null,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return Icon(Icons.check, color: Colors.white);
    }
  }

  void animateButton() {
    double initialWidth = _globalKey.currentContext.size.width;

    _controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);

    _animation = Tween(begin: 0.0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {
          _width2 = initialWidth - ((initialWidth - 48) * _animation.value);
        });
      });
    _controller.forward();

    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 3300), () {
      setState(() {
        _state = 2;
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
      });
    });
  }
}

Widget menuBawah() {
  final menu = BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), title: Text("Dashboard")),
      BottomNavigationBarItem(
          icon: Icon(Icons.assignment_rounded), title: Text("Perwalian")),
      BottomNavigationBarItem(
          icon: Icon(Icons.laptop_mac), title: Text("Kelas")),
      BottomNavigationBarItem(
          icon: Icon(Icons.library_books_outlined), title: Text("Transkrip")),
      BottomNavigationBarItem(
          icon: Icon(Icons.date_range_rounded), title: Text("Jadwal")),
      BottomNavigationBarItem(
          icon: Icon(Icons.payment_rounded), title: Text("Keuangan")),
    ],
  );

  return menu;
}