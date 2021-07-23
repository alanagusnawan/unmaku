import 'package:flutter/material.dart';
import 'package:unmaku/pages/NavBar.dart';

class KelasKuliahDaringPage extends StatefulWidget {
  @override
  _KelasKuliahDaringPageState createState() => _KelasKuliahDaringPageState();
}

class _KelasKuliahDaringPageState extends State<KelasKuliahDaringPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black12,
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
                          radius: _width / 11,
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
                    Text(
                      'KELAS KULIAH',
                      style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 18),
                    ),
                    Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('/kks');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 0.1))),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Icon(Icons.person,
                                                    size: _width / 10),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Kelas Kuliah Semester",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: _width / 22),
                                                ),
                                              ),
                                              Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: _width / 15)
                                            ],
                                          ),
                                        )),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/riwayatsemester');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Icon(Icons.wysiwyg_rounded,
                                                size: _width / 10),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Riwayat Kartu Rencana Studi",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: _width / 22),
                                            ),
                                          ),
                                          Icon(Icons.arrow_forward_ios_rounded,
                                              size: _width / 15)
                                        ],
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
