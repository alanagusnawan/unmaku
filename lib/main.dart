import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:unmaku/pages/NavBar.dart';
import 'package:unmaku/pages/home/UjianPage.dart';
import 'package:unmaku/pages/jadwal/JadwalKuliahPage.dart';
import 'package:unmaku/pages/jadwal/SeminarSidangPage.dart';
import 'package:unmaku/pages/kelas/DaftarPertemuanPage.dart';
import 'package:unmaku/pages/kelas/KelasKuliahSemesterPage.dart';
import 'package:unmaku/pages/kelas/MasukPertemuanPage.dart';
import 'package:unmaku/pages/kelas/RiwayatSemester.dart';
import 'package:unmaku/pages/keuangan/HistoriPembayaranPage.dart';
import 'package:unmaku/pages/keuangan/HistoriTagihanPage.dart';
import 'package:unmaku/pages/keuangan/InvoicePage.dart';
import 'package:unmaku/pages/login/LoginPage.dart';
import 'package:unmaku/pages/perwalian/KartuRencanaStudiPage.dart';
import 'package:unmaku/pages/perwalian/PerwalianOnlinePage.dart';
import 'package:unmaku/pages/perwalian/RiwayatKartuRencanaStudiPage.dart';
import 'package:unmaku/pages/profile/AkademikPage.dart';
import 'package:unmaku/pages/profile/DataDiriPage.dart';
import 'package:unmaku/pages/profile/DokumenPage.dart';
import 'package:unmaku/pages/profile/ProfilePage.dart';

void main() {
  Function duringSplash = () {
    int a = 123 + 23;

    if (a > 100)
      return 1;
    else
      return 2;
  };

  initializeDateFormatting();
  Map<int, Widget> op = {1: Login()};

  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    home: AnimatedSplash(
      imagePath: 'assets/images/logo.png',
      home: Login(),
      customFunction: duringSplash,
      duration: 2500,
      type: AnimatedSplashType.BackgroundProcess,
      outputAndHome: op,
    ),
    routes: <String, WidgetBuilder>{
      '/login': (BuildContext context) => new Login(),
      '/menu': (BuildContext context) => new MenuBawah(),
      '/profile': (BuildContext context) => new ProfilePage(),
      '/datadiri': (BuildContext context) => new DataDiriPage(),
      '/akademik': (BuildContext context) => new AkademikPage(),
      '/dokumen': (BuildContext context) => new DokumenPage(),
      '/krs': (BuildContext context) => new KartuRencanaStudiPage(),
      '/kks': (BuildContext context) => new KelasKuliahSemester(),
      '/jadwal': (BuildContext context) => new JadwalKuliahPage(),
      '/perwalianonline': (BuildContext context) => new PerwalianOnlinePage(),
      '/riwayatkrs': (BuildContext context) =>
          new RiwayatKartuRencanaStudiPage(),
      '/riwayatsemester': (BuildContext context) => new RiwayatSemesterPage(),
      '/seminarsidang': (BuildContext context) => new SeminarSidangPage(),
      '/historitagihan': (BuildContext context) => new HistoriTagianPage(),
      '/historipembayaran': (BuildContext context) =>
          new HistoriPembayaranPage(),
      '/invoice': (BuildContext context) => new InvoicePage(),
      '/ujian': (BuildContext context) => new UjianPage(),
      '/pertemuan': (BuildContext context) => new DaftarPertemuanPage(),
      '/masuk': (BuildContext context) => new MasukPertemuanPage(),
    },
  ));
}
