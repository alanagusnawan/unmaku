import 'package:flutter/material.dart';

class MasukPertemuanPage extends StatefulWidget {
  @override
  _MasukPertemuanPageState createState() => _MasukPertemuanPageState();
}

class _MasukPertemuanPageState extends State<MasukPertemuanPage> {
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                            'STATUS KULIAH : SEDANG BERJALAN',
                            style: TextStyle(
                                fontFamily: 'Poppins-Bold',
                                color: Color(0xff4e4e4e),
                                fontWeight: FontWeight.bold,
                                fontSize: _width / 18),
                          ),
                        ],
                      ),
                    ),
                    Text("Pertemuan ke-14 Algoritma dan Pemrograman A",
                        style: TextStyle(color: Color(0xff4e4e4e))),
                    Container(
                      height: _height / 1.53,
                      width: _width / 1.15,
                      child: ListView(
                        children: [
                          Container(
                            width: _width,
                            height: _height / 14,
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.video_call_rounded,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Mulai Video Konferensi",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Row(
                            children: [
                              Container(
                                width: _width / 2.4,
                                height: _height / 14,
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hadir",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: _width / 2.4,
                                height: _height / 14,
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Perbarui Peserta",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Text("Jumlah Peserta : 27",
                              style: TextStyle(color: Color(0xff4e4e4e))),
                          Container(
                            height: _height / 5.9,
                            width: _width,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: _width / 4,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "NPM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4e4e4e)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 5,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "NAMA",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4e4e4e)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 5,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "STATUS",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4e4e4e)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 5,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "NILAI",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4e4e4e)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      height: _height / 8,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
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
                                                  width: _width / 4,
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
                                                    "19.14.1.0005",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "Aa Herdi Prayoga",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
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
                                                    "H",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Container(
                                                  width: _width / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                    bottom: BorderSide(
                                                        width: 1.0,
                                                        color: Colors.black),
                                                  )),
                                                  child: Text(
                                                    "100",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 13.5,
                                                        color:
                                                            Color(0xff4e4e4e)),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Text("Aktifitas Perkuliahan"),
                          Container(
                            width: _width / 1.3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 5.0),
                              child: Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Container(
                                        width: _width / 1.6,
                                        height: _height / 5,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            border: Border.all(
                                                width: 1.0,
                                                color: Colors.black)),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                hintMaxLines: 2,
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                hintText:
                                                    " Bagikan apa yang ada di\n pikiranmu...")),
                                      ),
                                    ),
                                    Container(
                                      width: _width / 1.6,
                                      height: _height / 14,
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: _width / 2.323,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                        left: Radius.circular(
                                                            15.0))),
                                            child: TextFormField(
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    disabledBorder:
                                                        InputBorder.none,
                                                    hintText: "  Pilih File")),
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide.none,
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Unggah",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: _width / 4,
                                      height: _height / 15,
                                      padding:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Kirim",
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
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
