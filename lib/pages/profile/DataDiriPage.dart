import 'package:flutter/material.dart';

class DataDiriPage extends StatefulWidget {
  @override
  _DataDiriPageState createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
  String _selectedGender = 'male';
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 2;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

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
              padding: const EdgeInsets.only(bottom: 30.0, left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 30.0),
                    child: Image.asset(
                      "assets/images/unmaku.png",
                      scale: 1.5,
                    ),
                  ),
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
                          height: _height / 3.5,
                          width: _width / 1.3,
                          child: Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundImage: NetworkImage(
                                            'https://simakng.unma.ac.id/files/mahasiswa/large/b637b2d52477e422fbff6ab52e40730e.jpg'),
                                      ),
                                      Text('Rifa Nurfalah',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                      Text('19.14.1.0012',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                      Text('Semester Aktif : 2020/2021 Genap',
                                          style: TextStyle(
                                              color: Color(0xff4e4e4e))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: _height / 50),
                          width: _width / 1.3,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                '/profile',
                                                (Route<dynamic> route) =>
                                                    false);
                                      },
                                      child: Icon(Icons.arrow_back_ios_rounded,
                                          size: _width / 15),
                                    ),
                                    Text(
                                      'DATA DIRI',
                                      style: TextStyle(
                                          fontFamily: 'Poppins-Bold',
                                          color: Color(0xff4e4e4e),
                                          fontWeight: FontWeight.bold,
                                          fontSize: _width / 18),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, bottom: 10.0),
                                    child: Card(
                                      elevation: 8.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.0,
                                              right: 10.0,
                                              top: 20.0,
                                              bottom: 20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'ID MAHASISWA',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Color(0xff4e4e4e),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextFormField(
                                                        readOnly: true,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff696969),
                                                            fontSize: 13),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "1904119",
                                                                filled: true,
                                                                fillColor: Color(
                                                                    0xfffafafa),
                                                                enabledBorder:
                                                                    const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0)),
                                                                  borderSide: const BorderSide(
                                                                      color: Colors
                                                                          .black38,
                                                                      width: 1),
                                                                ),
                                                                border: const OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15.0))),
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            12,
                                                                        horizontal:
                                                                            16)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'NAMA',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Color(0xff4e4e4e),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextFormField(
                                                        readOnly: true,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff696969),
                                                            fontSize: 13),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "Rifa Nurfalah",
                                                                filled: true,
                                                                fillColor: Color(
                                                                    0xfffafafa),
                                                                enabledBorder:
                                                                    const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0)),
                                                                  borderSide: const BorderSide(
                                                                      color: Colors
                                                                          .black38,
                                                                      width: 1),
                                                                ),
                                                                border: const OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15.0))),
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            12,
                                                                        horizontal:
                                                                            16)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'JENIS KELAMIN',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Color(0xff4e4e4e),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Radio(
                                                          value: 1,
                                                          groupValue:
                                                              selectedRadio,
                                                          activeColor:
                                                              Colors.green,
                                                          onChanged: (val) {
                                                            print("Radio $val");
                                                            setSelectedRadio(
                                                                val);
                                                          },
                                                        ),
                                                        Text("Male"),
                                                        Radio(
                                                          value: 2,
                                                          groupValue:
                                                              selectedRadio,
                                                          activeColor:
                                                              Colors.blue,
                                                          onChanged: (val) {
                                                            print("Radio $val");
                                                            setSelectedRadio(
                                                                val);
                                                          },
                                                        ),
                                                        Text("Female"),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'NO HP',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Color(0xff4e4e4e),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextFormField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff696969),
                                                            fontSize: 13),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "085567XXXXXX",
                                                                filled: true,
                                                                fillColor: Color(
                                                                    0xfffafafa),
                                                                enabledBorder:
                                                                    const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0)),
                                                                  borderSide: const BorderSide(
                                                                      color: Colors
                                                                          .black38,
                                                                      width: 1),
                                                                ),
                                                                border: const OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15.0))),
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            12,
                                                                        horizontal:
                                                                            16)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'EMAIL',
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Color(0xff4e4e4e),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TextFormField(
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff696969),
                                                            fontSize: 13),
                                                        decoration:
                                                            InputDecoration(
                                                                hintText:
                                                                    "rifanur@gmail.com",
                                                                filled: true,
                                                                fillColor: Color(
                                                                    0xfffafafa),
                                                                enabledBorder:
                                                                    const OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15.0)),
                                                                  borderSide: const BorderSide(
                                                                      color: Colors
                                                                          .black38,
                                                                      width: 1),
                                                                ),
                                                                border: const OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15.0))),
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            12,
                                                                        horizontal:
                                                                            16)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
