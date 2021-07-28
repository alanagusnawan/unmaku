import 'package:flutter/material.dart';

class KelasKuliahSemester extends StatefulWidget {
  @override
  _KelasKuliahSemesterState createState() => _KelasKuliahSemesterState();
}

class _KelasKuliahSemesterState extends State<KelasKuliahSemester> {
  bool isSenin = true;
  bool isSelasa = false;
  bool isRabu = false;
  bool isKamis = false;
  bool isJumat = false;
  bool isSabtu = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: menuBawah(),
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
                          'KELAS KULIAH SEMESTER',
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
                                padding: EdgeInsets.only(bottom: _height / 50),
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
                                                  backgroundColor: Colors.grey,
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
                                                  backgroundColor: Colors.grey,
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
                                                  backgroundColor: Colors.grey,
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
                                                  backgroundColor: Colors.grey,
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
                                                  backgroundColor: Colors.grey,
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
                                                  backgroundColor: Colors.grey,
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
                                width: _width / 1.2,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(bottom: _height / 50),
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0,
                                                    bottom: 10.0,
                                                    left: 5.0,
                                                    right: 5.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
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
                                                    Container(
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
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pushNamed(
                                                                  '/pertemuan');
                                                        },
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
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 8.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0,
                                                  bottom: 10.0,
                                                  left: 5.0,
                                                  right: 5.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Statistika & Probabilitas C",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xff4e4e4e)),
                                                      ),
                                                      Text('Ruang : 303',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)))
                                                    ],
                                                  ),
                                                  Container(
                                                    width: _width / 3.5,
                                                    height: _height / 20,
                                                    child: TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.grey,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        "11:30-13:30",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
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

Widget menuBawah() {
  final menu = BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Dashboard")),
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
