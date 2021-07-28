import 'package:flutter/material.dart';

class KartuRencanaStudiPage extends StatefulWidget {
  @override
  _KartuRencanaStudiPageState createState() => _KartuRencanaStudiPageState();
}

class _KartuRencanaStudiPageState extends State<KartuRencanaStudiPage> {
  bool isAdded1 = false;
  bool isAdded2 = false;
  bool isAdded3 = false;
  bool isAdded4 = false;

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
                          'KARTU RENCANA STUDI',
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 10.0,
                                          left: 5.0,
                                          right: 5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text("Struktur Data I",
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff4e4e4e)))),
                                          Expanded(
                                            flex: -1,
                                            child: InkWell(
                                                onTap: () {
                                                  isAdded1 = !isAdded1;
                                                  setState(() {});
                                                },
                                                child: isAdded1
                                                    ? Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.blue,
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.black,
                                                      )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 10.0,
                                          left: 5.0,
                                          right: 5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text("Struktur Data II",
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff4e4e4e)))),
                                          Expanded(
                                            flex: -1,
                                            child: InkWell(
                                                onTap: () {
                                                  isAdded2 = !isAdded2;
                                                  setState(() {});
                                                },
                                                child: isAdded2
                                                    ? Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.blue,
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.black,
                                                      )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 10.0,
                                          left: 5.0,
                                          right: 5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text("Desain UI/UX",
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff4e4e4e)))),
                                          Expanded(
                                            flex: -1,
                                            child: InkWell(
                                                onTap: () {
                                                  isAdded3 = !isAdded3;
                                                  setState(() {});
                                                },
                                                child: isAdded3
                                                    ? Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.blue,
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.black,
                                                      )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 10.0,
                                          left: 5.0,
                                          right: 5.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Text("Logika Matematika",
                                                  style: TextStyle(
                                                      color:
                                                          Color(0xff4e4e4e)))),
                                          Expanded(
                                            flex: -1,
                                            child: InkWell(
                                                onTap: () {
                                                  isAdded4 = !isAdded4;
                                                  setState(() {});
                                                },
                                                child: isAdded4
                                                    ? Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.blue,
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .add_circle_outline_rounded,
                                                        color: Colors.black,
                                                      )),
                                          )
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
                    Container(
                      width: _width / 1.2,
                      height: _height / 14,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Ajukan",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
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
