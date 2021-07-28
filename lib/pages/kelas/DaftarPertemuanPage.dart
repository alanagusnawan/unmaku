import 'package:flutter/material.dart';

class DaftarPertemuanPage extends StatefulWidget {
  @override
  _DaftarPertemuanPageState createState() => _DaftarPertemuanPageState();
}

class _DaftarPertemuanPageState extends State<DaftarPertemuanPage> {
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
                          'DAFTAR PERTEMUAN',
                          style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              color: Color(0xff4e4e4e),
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    Text("Algoritma dan Pemrograman A"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: _width / 1.7,
                              child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://img.unma.ac.id/images/8CuJw.th.jpg',
                                        height: _height / 5,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: _width,
                                        height: _height / 25,
                                        color: Colors.blue,
                                        child: Text(
                                          "Pertemuan #1",
                                          style: TextStyle(
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Tanggal',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('14 Januari 2021',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Kuliah',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Mulai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('13:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Selesai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('15:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Ringkasan',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Struct',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: _width / 5,
                                          height: _height / 20,
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
                                              "Detail",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4e4e4e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: _width / 1.7,
                              child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://img.unma.ac.id/images/8CuJw.th.jpg',
                                        height: _height / 5,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: _width,
                                        height: _height / 25,
                                        color: Colors.blue,
                                        child: Text(
                                          "Pertemuan #1",
                                          style: TextStyle(
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Tanggal',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('14 Januari 2021',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Kuliah',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Mulai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('13:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Selesai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('15:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Ringkasan',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Struct',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: _width / 5,
                                          height: _height / 20,
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
                                              "Detail",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4e4e4e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: _width / 1.7,
                              child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://img.unma.ac.id/images/8CuJw.th.jpg',
                                        height: _height / 5,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: _width,
                                        height: _height / 25,
                                        color: Colors.blue,
                                        child: Text(
                                          "Pertemuan #1",
                                          style: TextStyle(
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Tanggal',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('14 Januari 2021',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Kuliah',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Mulai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('13:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Selesai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('15:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Ringkasan',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Struct',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: _width / 5,
                                          height: _height / 20,
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
                                              "Detail",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4e4e4e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: _width / 1.7,
                              child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://img.unma.ac.id/images/8CuJw.th.jpg',
                                        height: _height / 5,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: _width,
                                        height: _height / 25,
                                        color: Colors.blue,
                                        child: Text(
                                          "Pertemuan #1",
                                          style: TextStyle(
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Tanggal',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('14 Januari 2021',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Kuliah',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Mulai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('13:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Selesai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('15:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Ringkasan',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Struct',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: _width / 5,
                                          height: _height / 20,
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
                                              "Detail",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4e4e4e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              width: _width / 1.7,
                              child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        'https://img.unma.ac.id/images/8CuJw.th.jpg',
                                        height: _height / 5,
                                        fit: BoxFit.fill,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: _width,
                                        height: _height / 25,
                                        color: Colors.blue,
                                        child: Text(
                                          "Pertemuan #1",
                                          style: TextStyle(
                                            color: Color(0xff4e4e4e),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Tanggal',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('14 Januari 2021',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jenis',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Kuliah',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Mulai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('13:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Jam Selesai',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('15:33:46',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text('Ringkasan',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                ),
                                                Expanded(
                                                  child: Text('Struct',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff4e4e4e))),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          width: _width / 5,
                                          height: _height / 20,
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
                                              "Detail",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4e4e4e),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text("Pertemuan Hari Ini",
                        style: TextStyle(color: Color(0xff4e4e4e))),
                    Container(
                      width: _width / 1.3,
                      height: _height / 14,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/masuk');
                        },
                        child: Text(
                          "Masuk Pertemuan Kuliah",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff4e4e4e),
                          ),
                        ),
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
