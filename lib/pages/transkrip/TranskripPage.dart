import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unmaku/pages/NavBar.dart';

class TranskripPage extends StatefulWidget {
  @override
  _TranskripPageState createState() => _TranskripPageState();
}

class _TranskripPageState extends State<TranskripPage> {
  DropdownButton _itemDown() => DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              value: "Transkrip",
              child: InkWell(
                child: Text(
                  "Transkrip",
                  style: TextStyle(
                      fontFamily: 'Poppins-Semi-Bold',
                      color: Colors.black,
                      fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuBawah()));
                },
              ),
            ),
            DropdownMenuItem<String>(
              value: "Transkrip Per Semester",
              child: InkWell(
                child: Text(
                  "Transkrip Per Semester",
                  style: TextStyle(
                      fontFamily: 'Poppins-Semi-Bold',
                      color: Colors.black,
                      fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuBawah()));
                },
              ),
            ),
            DropdownMenuItem<String>(
              value: "Riwayat Nilai",
              child: InkWell(
                child: Text(
                  "Riwayat Nilai",
                  style: TextStyle(
                      fontFamily: 'Poppins-Semi-Bold',
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
            ),
          ],
          isExpanded: true,
          onChanged: (value) {
            print("value: $value");
          },
          hint: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text("Pilih Jenis Transkrip",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    color: Colors.black,
                    fontSize: 20)),
          ));

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
                width: _width / 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'TRANSKIP',
                      style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: _width / 18),
                    ),
                    InkWell(
                      child: Container(
                        width: _width,
                        padding: EdgeInsets.only(top: _width / 30),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(_width / 50),
                          child: _itemDown(),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: _width,
                        padding: EdgeInsets.only(top: _width / 30),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(_width / 50),
                          child: _itemDown(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: _height / 20),
                width: _width / 1.3,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: _height / 50),
                        width: _width / 3,
                        height: _height / 15,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Lihat",
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semi-Bold',
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: _height / 50),
                        width: _width / 3,
                        height: _height / 15,
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.print,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Cetak",
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Semi-Bold',
                                    fontSize: 16,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            )),
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
