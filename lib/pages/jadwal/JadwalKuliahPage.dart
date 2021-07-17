import 'package:flutter/material.dart';

class JadwalKuliahPage extends StatefulWidget {
  @override
  _JadwalKuliahPageState createState() => _JadwalKuliahPageState();
}

class _JadwalKuliahPageState extends State<JadwalKuliahPage> {

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
                          'JADWAL KULIAH',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "SENIN",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "SELASA",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "RABU",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "KAMIS",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "JUMAT",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: _width / 1.6,
                                decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      bottom: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    )),
                                child: Text(
                                  "SABTU",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("DESAIN DAN PEMROGRAMAN\nBERORIENTASI OBJEK (A)",
                                        textAlign: TextAlign.center,),
                                      Text("08:00:00 - 10:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("DEFFY SUSANTI",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("GRAFIKA KOMPUTER (A)",
                                        textAlign: TextAlign.center,),
                                      Text("08:00:00 - 10:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("TRI FERGA PRASETYO",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("DESAIN UI/UX (A)",
                                        textAlign: TextAlign.center,),
                                      Text("08:00:00 - 10:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("SUHENDRI",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("SISTEM OPERASI (A)",
                                        textAlign: TextAlign.center,),
                                      Text("08:00:00 - 09:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("DEFFY SUSANTI",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("STATISTIKA & PROBABILITAS (C)",
                                        textAlign: TextAlign.center,),
                                      Text("11:30:00 - 13:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("DADAN ZALILUDDIN",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("METODE NUMERIK (A)",
                                        textAlign: TextAlign.center,),
                                      Text("10:30:00 - 12:00:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("BUDIMAN",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("MATEMATIKA DISKRIT (C)",
                                        textAlign: TextAlign.center,),
                                      Text("11:00:00 - 12:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("II SUPIANDI",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("TATA TULIS & KOMUNIKASI ILMIAH (A)",
                                        textAlign: TextAlign.center,),
                                      Text("10:00:00 - 12:30:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("DADAN ZALILUDDIN",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("SISTEM CERDAS (A)",
                                        textAlign: TextAlign.center,),
                                      Text("13:00:00 - 15:00:00 WIB",
                                        textAlign: TextAlign.center,),
                                      Text("ARDI MARDIANA",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                              Container(
                                  width: _width / 1.6,
                                  height: _height / 8,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        bottom: BorderSide(
                                            width: 1.0, color: Colors.black),
                                      )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                      Text(" ",
                                        textAlign: TextAlign.center,),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),)
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
