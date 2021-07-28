import 'dart:convert';
import 'dart:math';
import 'dart:async';
import 'package:hb_check_code/hb_check_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  int _state = 0;
  Animation _animation;
  AnimationController _controller;
  GlobalKey _globalKey = GlobalKey();
  double _width2 = double.maxFinite;
  TextEditingController cNpm = TextEditingController();
  var cPassword = TextEditingController();
  final _keyScaffold = GlobalKey<ScaffoldState>();
  bool _isSelected = false;

  bool _isHidePassword = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String code = "";
    for (var i = 0; i < 6; i++) {
      code = code + Random().nextInt(9).toString();
    }
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(43),
                ),
                Image.asset("assets/images/logo.png", width: _width / 3),
                Image.asset("assets/images/unmaku.png"),
                Container(
                  width: _width / 1.1,
                  height: _height / 2.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, right: 10.0, top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(
                              color: Color(0xff696969),
                              fontSize: 14,
                              fontFamily: 'Poppins'),
                          decoration: InputDecoration(
                              hintText: "Nama Pengguna",
                              filled: true,
                              fillColor: Color(0xfffafafa),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.black38, width: 1),
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16)),
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(15),
                        ),
                        TextFormField(
                          obscuringCharacter: '*',
                          obscureText: _isHidePassword,
                          controller: cPassword,
                          style: TextStyle(
                              color: Color(0xff696969),
                              fontSize: 14,
                              fontFamily: 'Poppins'),
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  _togglePasswordVisibility();
                                },
                                child: Icon(
                                  _isHidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: _isHidePassword
                                      ? Color(0xff4e4e4e)
                                      : Colors.blueAccent,
                                ),
                              ),
                              hintText: "Password",
                              filled: true,
                              fillColor: Color(0xfffafafa),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.black38, width: 1),
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16)),
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(25),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              color: Color(0xff696969),
                              fontSize: 14,
                              fontFamily: 'Poppins'),
                          decoration: InputDecoration(
                              hintText: "Masukan Teks Dibawah",
                              filled: true,
                              fillColor: Color(0xfffafafa),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: const BorderSide(
                                    color: Colors.black38, width: 1),
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HBCheckCode(
                              code: code,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: _width / 1.2,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (_state == 0) {
                              animateButton();
                            }
                          });
                        },
                        child: Container(
                            alignment: Alignment.center,
                            key: _globalKey,
                            width: _width / 1.2,
                            height: ScreenUtil.getInstance().setHeight(100),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: setUpButtonChild()),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _width / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: _radio,
                            child: radioButton(_isSelected),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Biarkan tetap masuk",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: const Color(0xff4e4e4e),
                              )),
                          SizedBox(
                            width: 12.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text("Lupa Kata Sandi?",
                              style: TextStyle(
                                  color: Color(0xff4e4e4e),
                                  fontFamily: "Poppins",
                                  fontSize: 13))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  setUpButtonChild() {
    if (_state == 0) {
      return Text(
        "Masuk",
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontFamily: 'Poppins-Semi-Bold'),
      );
    } else if (_state == 1) {
      return SizedBox(
        height: 36,
        width: 36,
        child: CircularProgressIndicator(
          value: null,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return Icon(Icons.check, color: Colors.white);
    }
  }

  void animateButton() {
    double initialWidth = _globalKey.currentContext.size.width;

    _controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);

    _animation = Tween(begin: 0.0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {
          _width2 = initialWidth - ((initialWidth - 48) * _animation.value);
        });
      });
    _controller.forward();

    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 3300), () {
      setState(() {
        _state = 2;
        Navigator.of(context).pushNamed('/menu');
      });
    });
  }
  // Future actionLogin() async {
  //   if (cNpm.text == "") {
  //     _keyScaffold.currentState
  //         .showSnackBar(SnackBar(content: Text("Email harus diisi")));
  //   } else if (cPassword.text == "") {
  //     _keyScaffold.currentState
  //         .showSnackBar(SnackBar(content: Text("Password harus diisi")));
  //   } else if (cPassword.text.length < 6) {
  //     _keyScaffold.currentState
  //         .showSnackBar(SnackBar(content: Text("Password harus 6 Digit")));
  //   } else {
  //     var params = <String, dynamic>{
  //       "username": cNpm.text,
  //       "password": cPassword.text
  //     };
  //     String url = "https://satu.unma.ac.id/auth/login";
  //     final response = await http.post(Uri.encodeFull(url), body: params);
  //
  //     print(
  //         "Respons dari server status : ${response.statusCode} isinya ${response.body}");
  //
  //     final data = jsonDecode(response.body);
  //
  //     final hasil = data["result"];
  //     final msg = data["msg"];
  //
  //     if (hasil) {
  //       final dUser = data["data"];
  //       print("respon dUser : ${dUser}");
  //       var nama = dUser['user_nama'];
  //       var email = dUser['user_email'];
  //       var hp = dUser['user_hp'];
  //
  //       Navigator.of(context).pushNamedAndRemoveUntil(
  //           '/menu', (Route<dynamic> route) => false);
  //     } else {
  //       _keyScaffold.currentState.showSnackBar(SnackBar(content: Text(msg)));
  //     }
  //   }
  // }
}
