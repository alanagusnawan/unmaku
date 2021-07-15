import 'package:flutter/material.dart';

class KelasKuliahSemester extends StatefulWidget {
  @override
  _KelasKuliahSemesterState createState() => _KelasKuliahSemesterState();
}

class _KelasKuliahSemesterState extends State<KelasKuliahSemester> {
  bool isSenin = true;
  bool isSelasa = true;
  bool isRabu = true;
  bool isKamis = true;
  bool isJumat = true;
  bool isSabtu = true;

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
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0, bottom: 30.0),
                      child: Image.asset(
                        "assets/images/unmaku.png",
                        scale: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: _width / 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: _height / 20, left: _width / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'KELAS KULIAH SEMESTER',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 18),
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isSenin
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = !isSenin;
                                            isSelasa = false;
                                            isRabu = false;
                                            isKamis = false;
                                            isJumat = false;
                                            isSabtu = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "SENIN",
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isSelasa
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = false;
                                            isSelasa = !isSelasa;
                                            isRabu = false;
                                            isKamis = false;
                                            isJumat = false;
                                            isSabtu = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "SELASA",
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isRabu
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = false;
                                            isSelasa = false;
                                            isRabu = !isRabu;
                                            isKamis = false;
                                            isJumat = false;
                                            isSabtu = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "RABU",
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isKamis
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = false;
                                            isSelasa = false;
                                            isRabu = false;
                                            isKamis = !isKamis;
                                            isJumat = false;
                                            isSabtu = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "KAMIS",
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isJumat
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = false;
                                            isSelasa = false;
                                            isRabu = false;
                                            isKamis = false;
                                            isJumat = !isJumat;
                                            isSabtu = false;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "JUMAT",
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
                                        width: _width / 4,
                                        height: _height / 20,
                                        child: TextButton(
                                          style: isSabtu
                                              ? TextButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                )
                                              : TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                          onPressed: () {
                                            isSenin = false;
                                            isSelasa = false;
                                            isRabu = false;
                                            isKamis = false;
                                            isJumat = false;
                                            isSabtu = !isSabtu;
                                            setState(() {});
                                          },
                                          child: Text(
                                            "SABTU",
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
                                width: _width / 1.3,
                                child: Column(
                                  children: [
                                    Card(
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
                                              child: Row(
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Desain Dan Pemrograman\nBerorientasi Objek A",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text('Ruang : 304')
                                                    ],
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      width: _width / 3.5,
                                                      height: _height / 20,
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              Colors.green,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "08:00-10:30",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Card(
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
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Statistika & Probabilitas C",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                      Text('Ruang : 303')
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: _width / 3.5,
                                                      height: _height / 20,
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                          Colors.blue,
                                                          shape:
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                20),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "08:00-10:30",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
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
