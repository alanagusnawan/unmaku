import 'package:flutter/material.dart';

class RiwayatSemesterPage extends StatefulWidget {
  @override
  _RiwayatSemesterPageState createState() => _RiwayatSemesterPageState();
}

class _RiwayatSemesterPageState extends State<RiwayatSemesterPage> {
  bool is2019ganjil = true;
  bool is2019genap = false;
  bool is2020ganjil = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        overflow: Overflow.visible,
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            children: [
              Container(
                height: _height / 4.5,
                width: _width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blueAccent]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),
                ),
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 30.0),
                      child: Image.asset(
                        "assets/images/unmaku.png",
                        scale: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: _width / 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/profile');
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: _height / 20, left: _width / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/menu', (Route<dynamic> route) => false);
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,
                              size: _width / 15),
                        ),
                        Text(
                          'RIWAYAT SEMESTER',
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Color(0xff4e4e4e),
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    Container(
                      width: _width,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        height: _height / 20,
                                        child: TextButton(
                                          style: is2019ganjil
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            is2019ganjil = !is2019ganjil;
                                            is2019genap = false;
                                            is2020ganjil = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "2019 / 2020 Ganjil",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        height: _height / 20,
                                        child: TextButton(
                                          style: is2019genap
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            is2019ganjil = false;
                                            is2019genap = !is2019genap;
                                            is2020ganjil = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "2019 / 2020 Genap",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        height: _height / 20,
                                        child: TextButton(
                                           style: is2020ganjil
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            is2019ganjil = false;
                                            is2019genap = false;
                                            is2020ganjil = !is2020ganjil;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "2020 / 2021 Ganjil",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: _width / 1.2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, bottom: 10.0),
                                  child: Card(
                                    elevation: 8.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
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
                                              InkWell(
                                                  onTap: () {
                                                    Navigator.of(context)
                                                        .pushNamed('/kks');
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors
                                                                    .black,
                                                                width: 0.1))),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            "Algoritma & Pemrograman A",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff4e4e4e),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    _width /
                                                                        25),
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
                                                        .pushNamed('/kks');
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Color(
                                                                    0xff4e4e4e),
                                                                width: 0.1))),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            "Pendidikan Pancasila A",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff4e4e4e),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    _width /
                                                                        25),
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
                                                        .pushNamed('/kks');
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors
                                                                    .black,
                                                                width: 0.1))),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            "Kalkulus I",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff4e4e4e),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    _width /
                                                                        25),
                                                          ),
                                                        ),
                                                        Icon(
                                                            Icons
                                                                .arrow_forward_ios_rounded,
                                                            size: _width / 15)
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
