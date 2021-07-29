import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AkademikPage extends StatefulWidget {
  @override
  _AkademikPageState createState() => _AkademikPageState();
}

class _AkademikPageState extends State<AkademikPage>
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
      backgroundColor: Colors.white,
      body: Container(
        height: _height,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              height: _height / 3.5,
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
              top: _height / 4.0,
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
                          width: _width / 1.3,
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
                                      Text('Rifa Nurfalah',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                      Text('19.14.1.0012',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                      Text('Semester Aktif : 2020/2021 Genap',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: _height / 50),
                          width: _width / 1.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/profile',
                                              (Route<dynamic> route) => false);
                                    },
                                    child: Icon(Icons.arrow_back_ios_rounded,
                                        size: _width / 15),
                                  ),
                                  Text(
                                    'AKADEMIK',
                                    style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        color: Color(0xff4e4e4e),
                                        fontWeight: FontWeight.bold,
                                        fontSize: _width / 18),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    width: _width / 1.3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, bottom: 5.0),
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
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
                                                  Container(
                                                    width: _width / 1.3,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20.0,
                                                              bottom: 10.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10.0,
                                                                    bottom:
                                                                        10.0,
                                                                    left: 5.0,
                                                                    right: 5.0),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "DATA AJAR MAHASISWA",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Poppins-Semi-Bold',
                                                                        color: Color(
                                                                            0xff4e4e4e))),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'ID Mahasiswa',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '19.14.1.0005',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Fakultas - Prodi',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Teknik - Informatika'),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Semester Diterima',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '1',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Dosen Wali',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Nunu Nurdiana',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                  Container(
                                    width: _width / 1.3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
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
                                                  Container(
                                                    width: _width / 1.3,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20.0,
                                                              bottom: 10.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: <Widget>[
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 10.0,
                                                                    bottom:
                                                                        10.0,
                                                                    left: 5.0,
                                                                    right: 5.0),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "DATA AJAR DETAIL",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Poppins-Semi-Bold',
                                                                        color: Color(
                                                                            0xff4e4e4e))),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'ID MHS',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '190118',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'TGL MASUK SP',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '2019-03-05',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'MULAI SMT',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '20191',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'SKS DIAKUI',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '68',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'IPK',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                      child: Text(
                                                                          '3.91',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                ],
                              ),
                            ],
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
}
