import 'package:flutter/material.dart';

class PenjadwalanPage extends StatefulWidget {

  @override
  _PenjadwalanPageState createState() => _PenjadwalanPageState();
}

class _PenjadwalanPageState extends State<PenjadwalanPage> {
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
                padding: EdgeInsets.only(
                    top: _height / 20),
                width: _width / 1.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('JADWAL',
                      style: TextStyle(
                          fontFamily: 'Segoe UI',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 18),),

                    Container(
                      width: _width ,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed('/jadwal');
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
                                                padding:
                                                const EdgeInsets.all(10),
                                                child: Icon(Icons.person,
                                                    size: _width / 10),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "Jadwal Kuliah",
                                                  style: TextStyle(
                                                      fontFamily: 'Segoe UI',
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600,
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
                                            .pushNamed('/seminarsidang');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.all(10),
                                            child: Icon(
                                                Icons.wysiwyg_rounded,
                                                size: _width / 10),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Seminar / Sidang",
                                              style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: _width / 22),
                                            ),
                                          ),
                                          Icon(
                                              Icons
                                                  .arrow_forward_ios_rounded,
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
