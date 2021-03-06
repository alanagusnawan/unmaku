import 'package:flutter/material.dart';

class UjianPage extends StatefulWidget {
  @override
  _UjianPageState createState() => _UjianPageState();
}

class _UjianPageState extends State<UjianPage> {
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
                          padding: EdgeInsets.only(top: _height / 50),
                          width: _width / 1.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/menu',
                                              (Route<dynamic> route) => false);
                                    },
                                    child: Icon(Icons.arrow_back_ios_rounded,
                                        size: _width / 15),
                                  ),
                                  Text(
                                    'UJIAN DARING',
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
                                                                    bottom: 5.0,
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
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Mata Kuliah',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":")),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' Algoritma dan \n Pemrograman A',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Tanggal',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' 14 Januari 2021',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Jam Server Mulai',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' 08:00:00',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Jam Server Selesai',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' 09:00:00',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Dosen Pengampu',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' Ardi Mardiana',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Nama',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' Rifa Nurfalah',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'NPM'),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' 19.14.1.0012',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                          'Fakultas / Prodi',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    ),
                                                                    Expanded(
                                                                        flex: 0,
                                                                        child: Text(
                                                                            ":",
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e)))),
                                                                    Expanded(
                                                                      child: Text(
                                                                          ' FT - Informatika',
                                                                          style:
                                                                              TextStyle(color: Color(0xff4e4e4e))),
                                                                    )
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              30),
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child: Text(
                                                                            'Tahun Akademik',
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e))),
                                                                      ),
                                                                      Expanded(
                                                                          flex:
                                                                              0,
                                                                          child:
                                                                              Text(":")),
                                                                      Expanded(
                                                                        child: Text(
                                                                            ' 2020 / 2021 Genap',
                                                                            style:
                                                                                TextStyle(color: Color(0xff4e4e4e))),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width:
                                                                      _width /
                                                                          1.3,
                                                                  height:
                                                                      _height /
                                                                          14,
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5),
                                                                  child:
                                                                      TextButton(
                                                                    style: TextButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .blue,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15),
                                                                      ),
                                                                    ),
                                                                    onPressed:
                                                                        () {},
                                                                    child: Text(
                                                                      "Unduh Soal Ujian",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Color(
                                                                            0xff4e4e4e),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width:
                                                                      _width /
                                                                          1.3,
                                                                  height:
                                                                      _height /
                                                                          14,
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top:
                                                                              5,
                                                                          bottom:
                                                                              5),
                                                                  child:
                                                                      TextButton(
                                                                    style: TextButton
                                                                        .styleFrom(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .blue,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15),
                                                                      ),
                                                                    ),
                                                                    onPressed:
                                                                        () {},
                                                                    child: Text(
                                                                      "Unduh Lembar Jawaban",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Color(
                                                                            0xff4e4e4e),
                                                                      ),
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
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: _width,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, bottom: 5.0),
                                      child: Card(
                                        elevation: 8.0,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Colors.white,
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
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .rotate_left_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .rotate_right_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            left: BorderSide(
                                                                width: 1.0,
                                                                color: Colors
                                                                    .black))),
                                                    child: Icon(Icons
                                                        .format_bold_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .format_underline_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            right: BorderSide(
                                                                width: 1.0,
                                                                color: Colors
                                                                    .black))),
                                                    child: Icon(Icons
                                                        .format_italic_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .format_align_left_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .format_align_center_rounded)),
                                                Container(
                                                    width: _width / 11,
                                                    child: Icon(Icons
                                                        .format_align_justify_rounded)),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: _width / 1.35,
                                                  height: _height / 5,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color:
                                                              Colors.black38)),
                                                  child: TextFormField(
                                                      decoration: InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                          focusedBorder:
                                                              InputBorder.none,
                                                          enabledBorder:
                                                              InputBorder.none,
                                                          errorBorder:
                                                              InputBorder.none,
                                                          disabledBorder:
                                                              InputBorder.none,
                                                          hintText:
                                                              "Tulis Jawaban Kamu Disini...")),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: _width / 1.49,
                                              height: _height / 15,
                                              padding: EdgeInsets.only(
                                                  top: 5, bottom: 5),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: _width / 2.1,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1.0,
                                                            color:
                                                                Colors.black38),
                                                        borderRadius: BorderRadius
                                                            .horizontal(
                                                                left: Radius
                                                                    .circular(
                                                                        15.0))),
                                                    child: TextFormField(
                                                        decoration: InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            focusedBorder:
                                                                InputBorder
                                                                    .none,
                                                            enabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            errorBorder:
                                                                InputBorder
                                                                    .none,
                                                            disabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            hintText:
                                                                "  Pilih File")),
                                                  ),
                                                  TextButton(
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: BorderSide.none,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  15),
                                                        ),
                                                      ),
                                                    ),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Unggah",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            Color(0xff4e4e4e),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: _width / 1.4,
                                              height: _height / 14,
                                              padding: EdgeInsets.only(
                                                  top: 5, bottom: 5),
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Text(
                                                  "Simpan Jawaban",
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
