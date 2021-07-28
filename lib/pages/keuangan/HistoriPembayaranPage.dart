import 'package:flutter/material.dart';

class HistoriPembayaranPage extends StatefulWidget {
  @override
  _HistoriPembayaranPageState createState() => _HistoriPembayaranPageState();
}

class _HistoriPembayaranPageState extends State<HistoriPembayaranPage> {
  bool is1 = true;
  bool is2 = false;
  bool is3 = false;

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
                          'HISTORI PEMBAYARAN',
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            padding: EdgeInsets.only(bottom: _height / 50),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "TAHUN",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "SEMESTER",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "JENIS",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "JUMLAH BAYAR",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "TANGGAL",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: _width / 2,
                                        decoration: BoxDecoration(
                                            border: Border(
                                          right: BorderSide(
                                              width: 1.0, color: Colors.black),
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.black),
                                        )),
                                        child: Text(
                                          "SISA TAGIHAN",
                                          style: TextStyle(
                                              fontFamily: 'Poppins-Semi-Bold',
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2020 / 2021",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "GENAP",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SKS",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rp. 1.500.000",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2019-03-04",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "H903",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2020 / 2021",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "GENAP",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SKS",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rp. 750.000",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2019-05-14",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "L085",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2020 / 2021",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "GENAP",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SKS",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rp. 1.500.000",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2019-03-04",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "H903",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2020 / 2021",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "GENAP",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SKS",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rp. 750.000",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2019-05-14",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "L085",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2020 / 2021",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "GENAP",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SKS",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rp. 1.500.000",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "2019-03-04",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
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
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "H903",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                " ",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: _width / 3.4,
                                height: _height / 15,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Sebelumnya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: is1 ? Colors.grey : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: _width / 10,
                                height: _height / 15,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: TextButton(
                                  style: is1
                                      ? TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                  )
                                      : TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
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
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: _width / 10,
                                height: _height / 15,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: TextButton(
                                  style: is2
                                      ? TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                  )
                                      : TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
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
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: _width / 10,
                                height: _height / 15,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: TextButton(
                                  style: is3
                                      ? TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
                                  )
                                      : TextButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero),
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
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: _width / 3.4,
                                height: _height / 15,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Selanjutnya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: is3 ? Colors.grey : Colors.black,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
