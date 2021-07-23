import 'package:flutter/material.dart';
import 'package:unmaku/pages/keuangan/KeuanganPage.dart';
import 'package:unmaku/pages/home/HomePage.dart';
import 'package:unmaku/pages/jadwal/PenjadwalanPage.dart';
import 'package:unmaku/pages/kelas/KelasKuliahDaringPage.dart';
import 'package:unmaku/pages/perwalian/PerwalianPage.dart';
import 'package:unmaku/pages/transkrip/TranskripPage.dart';


class MenuBawah extends StatefulWidget {
  @override
  _MenuBawahState createState() => _MenuBawahState();
}

class _MenuBawahState extends State<MenuBawah> {
  // buat index untuk posisi menu yang aktif
  int indexPage = 0;
  // data halaman yang akan masuk ke bottomNavigation
  List<Widget> pages = [];

  PageController controllerPage;

  @override
  void initState() {
    super.initState();

    setState(() {
      pages = [
        HomePage(),
        PerwalianPage(),
        KelasKuliahDaringPage(),
        TranskripPage(),
        PenjadwalanPage(),
        KeuanganPage(),
      ];

      controllerPage = PageController(
        initialPage: indexPage,
        keepPage: true,
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: menuBawah(),
    );
  }

  Widget menuBawah() {
    final menu = BottomNavigationBar(
      currentIndex: indexPage,
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState(() {
          indexPage = index;
          // untuk pageview berpindah posisi
          controllerPage.animateToPage(indexPage, duration: Duration(milliseconds: 500), curve: Curves.ease);
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Dashboard")),
        BottomNavigationBarItem(icon: Icon(Icons.assignment_rounded), title: Text("Perwalian")),
        BottomNavigationBarItem(
            icon: Icon(Icons.laptop_mac), title: Text("Kelas")),
        BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), title: Text("Transkrip")),
        BottomNavigationBarItem(icon: Icon(Icons.date_range_rounded), title: Text("Jadwal")),
        BottomNavigationBarItem(icon: Icon(Icons.payment_rounded), title: Text("Keuangan")),
      ],
    );

    return menu;
  }

  Widget buildPageView() {
    return PageView(
      controller: controllerPage,
      children: pages,
      onPageChanged: (index) {
        setState(() {
          indexPage = index;
        });
      },
    );
  }
}

