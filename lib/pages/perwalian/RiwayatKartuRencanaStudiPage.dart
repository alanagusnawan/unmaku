import 'package:flutter/material.dart';

class RiwayatKartuRencanaStudiPage extends StatefulWidget {
  @override
  _RiwayatKartuRencanaStudiPageState createState() =>
      _RiwayatKartuRencanaStudiPageState();
}

class _RiwayatKartuRencanaStudiPageState
    extends State<RiwayatKartuRencanaStudiPage> {
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
                padding: EdgeInsets.only(top: _height / 20),
                width: _width / 1.2,
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
                          'RIWAYAT KRS',
                          style: TextStyle(
                              fontFamily: 'Segoe UI',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: _width / 18),
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                  left: 5.0,
                                  right: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    height: _height / 4,
                                    child: Card(
                                      elevation: 8.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Table(
                                                columnWidths: const <int,
                                                    TableColumnWidth>{
                                                  0: IntrinsicColumnWidth(),
                                                  1: FlexColumnWidth(),
                                                  2: FlexColumnWidth(),
                                                  3: FlexColumnWidth(),
                                                },
                                                defaultVerticalAlignment:
                                                    TableCellVerticalAlignment
                                                        .middle,
                                                children: <TableRow>[
                                                  TableRow(
                                                    children: <Widget>[
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("Tahun Akademik",style: TextStyle(fontWeight: FontWeight.bold)),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("KRS",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("KSM",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("KHS",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                                                    ],
                                                  ),
                                                  TableRow(
                                                    children: <Widget>[
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("2019/2020 Ganjil"),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                    ],
                                                  ),
                                                  TableRow(
                                                    children: <Widget>[
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("2019/2020 Genap"),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                    ],
                                                  ),
                                                  TableRow(
                                                    children: <Widget>[
                                                      Padding(padding: EdgeInsets.all(5.0), child: Text("2020/2021 Ganjil"),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                      Padding(padding: EdgeInsets.all(5.0), child: Row(
                                                        children: [
                                                          Icon(Icons
                                                              .upload_file),
                                                          Icon(Icons
                                                              .remove_red_eye_rounded)
                                                        ],
                                                      ),),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
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
