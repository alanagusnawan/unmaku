import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  @override
  _InvoicePageState createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  bool is1 = true;
  bool is2 = true;
  bool is3 = true;

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
                        Navigator.of(context).pushNamed('/menu');
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
                          'INVOICE',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
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
                                          "KODE BAYAR",
                                          style: TextStyle(
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
                                          "JATUH TEMPO",
                                          style: TextStyle(
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
                                          "JUMLAH",
                                          style: TextStyle(
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
                                          "STATUS",
                                          style: TextStyle(
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
                                          height: _height / 12,
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
                                                "4148964285",
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
                                          height: _height / 12,
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
                                                "25-3-2021",
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
                                          height: _height / 12,
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
                                                "30-3-2021",
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
                                          height: _height / 12,
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
                                                "Rp. 1.430.000",
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
                                          height: _height / 12,
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
                                            MainAxisAlignment.center,
                                            children: [Container(
                                              width: _width / 5,
                                              height: _height/20,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Cetak",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: _width / 2,
                                          height: _height / 12,
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
                                                "6910025265",
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
                                          height: _height / 12,
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
                                                "19-3-2021",
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
                                          height: _height / 12,
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
                                                "24-3-2021",
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
                                          height: _height / 12,
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
                                                "Rp. 1.430.000",
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
                                          height: _height / 12,
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
                                            MainAxisAlignment.center,
                                            children: [Container(
                                              width: _width / 5,
                                              height: _height/20,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Lunas",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: _width / 2,
                                          height: _height / 12,
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
                                                "4148964285",
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
                                          height: _height / 12,
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
                                                "25-3-2021",
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
                                          height: _height / 12,
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
                                                "30-3-2021",
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
                                          height: _height / 12,
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
                                                "Rp. 1.430.000",
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
                                          height: _height / 12,
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
                                            MainAxisAlignment.center,
                                            children: [Container(
                                              width: _width / 5,
                                              height: _height/20,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Cetak",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: _width / 2,
                                          height: _height / 12,
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
                                                "6910025265",
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
                                          height: _height / 12,
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
                                                "19-3-2021",
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
                                          height: _height / 12,
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
                                                "24-3-2021",
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
                                          height: _height / 12,
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
                                                "Rp. 1.430.000",
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
                                          height: _height / 12,
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
                                            MainAxisAlignment.center,
                                            children: [Container(
                                              width: _width / 5,
                                              height: _height/20,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Lunas",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: _width / 2,
                                          height: _height / 12,
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
                                                "4148964285",
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
                                          height: _height / 12,
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
                                                "25-3-2021",
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
                                          height: _height / 12,
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
                                                "30-3-2021",
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
                                          height: _height / 12,
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
                                                "Rp. 1.430.000",
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
                                          height: _height / 12,
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
                                            MainAxisAlignment.center,
                                            children: [Container(
                                              width: _width / 5,
                                              height: _height/20,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Cetak",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffffffff),
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
                          Row(
                            children: [
                              Container(
                                width: _width / 3.5,
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
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
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: TextButton(
                                  style: is1
                                      ? TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  )
                                      : TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    is1 = !is1;
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
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: TextButton(
                                  style: is2
                                      ? TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  )
                                      : TextButton.styleFrom(
                                    backgroundColor: Colors.white,
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
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: TextButton(
                                  style: is3
                                      ? TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  )
                                      : TextButton.styleFrom(
                                    backgroundColor: Colors.white,
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
                                width: _width / 3.5,
                                height: _height / 20,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
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
