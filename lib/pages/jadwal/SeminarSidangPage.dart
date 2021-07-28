import 'package:flutter/material.dart';

class SeminarSidangPage extends StatefulWidget {
  @override
  _SeminarSidangPageState createState() => _SeminarSidangPageState();
}

class _SeminarSidangPageState extends State<SeminarSidangPage> {
  bool isJadwal = true;
  bool isTerbooking = false;
  bool is1 = true;
  bool is2 = false;
  bool is3 = false;

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
                padding: EdgeInsets.only(top: _height / 30, left: _width / 10),
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
                          'SEMINAR / SIDANG',
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Color(0xff4e4e4e),
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    Container(
                        height: _height / 1.62,
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
                                        style: isJadwal
                                            ? TextButton.styleFrom(
                                                backgroundColor: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              )
                                            : TextButton.styleFrom(
                                                backgroundColor: Colors.grey,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                        onPressed: () {
                                          isJadwal = !isJadwal;
                                          isTerbooking = false;
                                          setState(() {});
                                        },
                                        child: Text(
                                          "2019 / 2020 Ganjil",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      height: _height / 20,
                                      child: TextButton(
                                        style: isTerbooking
                                            ? TextButton.styleFrom(
                                                backgroundColor: Colors.green,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              )
                                            : TextButton.styleFrom(
                                                backgroundColor: Colors.grey,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                        onPressed: () {
                                          isJadwal = false;
                                          isTerbooking = !isTerbooking;
                                          setState(() {});
                                        },
                                        child: Text(
                                          "2019 / 2020 Genap",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    SingleChildScrollView(
                                      padding:
                                          EdgeInsets.only(bottom: _height / 50),
                                      scrollDirection: Axis.horizontal,
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.black,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "KEGIATAN",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "PRODI",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "JUDUL",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "TEMPAT",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "TANGGAL",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "WAKTU",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 2,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    right: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "AKSI",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins-Semi-Bold',
                                                        color:
                                                            Color(0xff4e4e4e),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Seminar Draft Penelitian",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Informatika",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Prototype Satu Unma",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "Berbasis Android",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Ruang Sidang / Daring",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "21/8/2021",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "08:00 WIB - 10:00 WIB",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: _width / 3,
                                                          height: _height / 15,
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
                                                              "Booking",
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
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Seminar Draft Penelitian",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Informatika",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Prototype Satu Unma",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "Berbasis Android",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Ruang Sidang / Daring",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "21/8/2021",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "08:00 WIB - 10:00 WIB",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: _width / 3,
                                                          height: _height / 15,
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
                                                              "Booking",
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
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Seminar Draft Penelitian",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Informatika",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Prototype Satu Unma",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "Berbasis Android",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Ruang Sidang / Daring",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "21/8/2021",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "08:00 WIB - 10:00 WIB",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: _width / 3,
                                                          height: _height / 15,
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
                                                              "Booking",
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
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Seminar Draft Penelitian",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Informatika",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Prototype Satu Unma",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "Berbasis Android",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Ruang Sidang / Daring",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          "",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "21/8/2021",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "08:00 WIB - 10:00 WIB",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4e4e4e)),
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          " ",
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    )),
                                                Container(
                                                    width: _width / 2,
                                                    height: _height / 10.6,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                      right: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                      bottom: BorderSide(
                                                          width: 1.0,
                                                          color: Colors.black),
                                                    )),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: _width / 3,
                                                          height: _height / 15,
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
                                                              "Booking",
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: _width / 3.5,
                                            height: _height / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: Colors.white,
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "Sebelumnya",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: is1
                                                      ? Colors.grey
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: _width / 10,
                                            height: _height / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                              style: is1
                                                  ? TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    )
                                                  : TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    ),
                                              onPressed: () {
                                                is1 = true;
                                                is2 = false;
                                                is3 = false;
                                                setState(() {});
                                              },
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xff4e4e4e),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: _width / 10,
                                            height: _height / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                              style: is2
                                                  ? TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    )
                                                  : TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    ),
                                              onPressed: () {
                                                is1 = false;
                                                is2 = !is2;
                                                is3 = false;
                                                setState(() {});
                                              },
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff4e4e4e)),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: _width / 10,
                                            height: _height / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                              style: is3
                                                  ? TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    )
                                                  : TextButton.styleFrom(
                                                      elevation: 0,
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .zero),
                                                    ),
                                              onPressed: () {
                                                is1 = false;
                                                is2 = false;
                                                is3 = !is3;
                                                setState(() {});
                                              },
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff4e4e4e)),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: _width / 3.5,
                                            height: _height / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: Colors.white,
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "Selanjutnya",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: is3
                                                      ? Colors.grey
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
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
