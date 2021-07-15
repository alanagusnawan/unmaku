import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class DokumenPage extends StatefulWidget {
  @override
  _DokumenPageState createState() => _DokumenPageState();
}

class _DokumenPageState extends State<DokumenPage> {
  PickedFile _image;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  //this is a code get image from Gallery
  _imageFromGallery() async {
    PickedFile image = await ImagePicker()
        .getImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: menuBawah(),
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
                                      Text('Rifa Nurfalah'),
                                      Text('19.14.1.0012'),
                                      Text('Semester Aktif : 2020/2021 Genap'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: _width / 1.3,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/profile',
                                      (Route<dynamic> route) => false);
                                },
                                child: Icon(Icons.arrow_back_ios_rounded,
                                    size: _width / 15),
                              ),
                              Text(
                                'DOKUMEN',
                                style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _width / 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: _width / 1.3,
                          child: Container(
                            width: _width / 1.3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 10.0),
                              child: Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text("PAS FOTO"),
                                                  Container(
                                                    width: _width / 3,
                                                    height: _height / 5,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2.0,
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: (_image != null)
                                                        ? Image.file(
                                                            File(_image.path),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Icon(
                                                            Icons.image,
                                                            size: _width / 10,
                                                          ),
                                                  ),
                                                  Center(
                                                    child: ElevatedButton(
                                                      child: Text('Unggah'),
                                                      onPressed:
                                                          _imageFromGallery,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: _width / 20,
                                              ),
                                              Column(
                                                children: [
                                                  Text("KTP"),
                                                  Container(
                                                    width: _width / 3,
                                                    height: _height / 5,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2.0,
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: (_image != null)
                                                        ? Image.file(
                                                            File(_image.path),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Icon(
                                                            Icons.image,
                                                            size: _width / 10,
                                                          ),
                                                  ),
                                                  Center(
                                                    child: ElevatedButton(
                                                      child: Text('Unggah'),
                                                      onPressed:
                                                          _imageFromGallery,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text("KARTU KELUARGA"),
                                                  Container(
                                                    width: _width / 3,
                                                    height: _height / 5,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2.0,
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: (_image != null)
                                                        ? Image.file(
                                                            File(_image.path),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Icon(
                                                            Icons.image,
                                                            size: _width / 10,
                                                          ),
                                                  ),
                                                  Center(
                                                    child: ElevatedButton(
                                                      child: Text('Unggah'),
                                                      onPressed:
                                                          _imageFromGallery,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: _width / 20,
                                              ),
                                              Column(
                                                children: [
                                                  Text("SKCK"),
                                                  Container(
                                                    width: _width / 3,
                                                    height: _height / 5,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 2.0,
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(25),
                                                      ),
                                                    ),
                                                    child: (_image != null)
                                                        ? Image.file(
                                                            File(_image.path),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Icon(
                                                            Icons.image,
                                                            size: _width / 10,
                                                          ),
                                                  ),
                                                  Center(
                                                    child: ElevatedButton(
                                                      child: Text('Unggah'),
                                                      onPressed:
                                                          _imageFromGallery,
                                                    ),
                                                  ),
                                                ],
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuBawah() {
    final menu = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("Dashboard")),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded), title: Text("Perwalian")),
        BottomNavigationBarItem(
            icon: Icon(Icons.laptop_mac), title: Text("Kelas")),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined), title: Text("Transkrip")),
        BottomNavigationBarItem(
            icon: Icon(Icons.date_range_rounded), title: Text("Jadwal")),
        BottomNavigationBarItem(
            icon: Icon(Icons.payment_rounded), title: Text("Keuangan")),
      ],
    );

    return menu;
  }
}
