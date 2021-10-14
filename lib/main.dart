import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_calculator/Widgets/buttontasarimi.dart';

void main() {
  runApp(const HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({Key? key}) : super(key: key);

  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  //Tutucular
  late int sayi1;
  late int sayi2;
  String gosterileceksayi = "0";
  String islemgecmisi = " ";
  late String sonuc;
  late String islemtutucu;

  //Buton tıklama olayı için aşağıdaki çalışma yapılır.
  void BtnTiklama(String buttonDegeriTutucu) {
    print(buttonDegeriTutucu);

    if (buttonDegeriTutucu == "AC") {
    } else if (buttonDegeriTutucu == "C") {
    } else if (buttonDegeriTutucu == "BACK") {
    } else if (buttonDegeriTutucu == "/") {
    } else if (buttonDegeriTutucu == "-") {
    } else if (buttonDegeriTutucu == "+") {
      //Gösterilen sayıyı sayi1'e aktar, sonucu temizle ve
      sayi1 = int.parse(gosterileceksayi);
      gosterileceksayi = sayi1.toString();
      sonuc = "";
      islemtutucu = buttonDegeriTutucu;
      setState(() {});
    } else if (buttonDegeriTutucu == "+/-") {
    } else if (buttonDegeriTutucu == "=") {
      //sayi2'yi aktar ve hangi işlemse yaptır.
      sayi2 = int.parse(gosterileceksayi);
      if (islemtutucu == "+") {
        sonuc = (sayi1 + sayi2).toString();
      } else if (islemtutucu == "-") {
        sonuc = (sayi1 - sayi2).toString();
      } else if (islemtutucu == "x") {
        sonuc = (sayi1 * sayi2).toString();
      } else if (islemtutucu == "/") {
        sonuc = (sayi1 / sayi2).toString();
      } else {
        sonuc = int.parse(gosterileceksayi + buttonDegeriTutucu).toString();
      }

      setState(() {
        gosterileceksayi = sonuc;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Debug yazısını yok eder.
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          //Scaffold uygulamaya beyaz perde çeker.
          appBar: AppBar(
            title: Text("Hesap Makinesi"),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment(1.0, 1.0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                    child: Text(
                      islemgecmisi,
                      style: GoogleFonts.rubik(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.black54)),
                    ),
                  ),
                ),
                Text(
                  gosterileceksayi,
                  style: GoogleFonts.rubik(
                      textStyle: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                Text("data"),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                //   child: Text(
                //     gosterileceksayi,
                //     style: GoogleFonts.rubik(
                //         textStyle:
                //             TextStyle(fontSize: 40, color: Colors.black)),
                //   ),
                // ),
                // Text("data"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HesapMakinesiButonu(
                        "AC", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "C", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "BACK", 0xfffaa282, 0xfff2f2f2, 20.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "/", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HesapMakinesiButonu(
                        "9", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "8", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "7", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "X", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HesapMakinesiButonu(
                        "6", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "5", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "4", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "-", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HesapMakinesiButonu(
                        "3", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "2", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "1", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "+", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HesapMakinesiButonu(
                        "+/-", 0xfffaa282, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "0", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "00", 0XFFFF5722, 0xfff2f2f2, 24.0, BtnTiklama),
                    HesapMakinesiButonu(
                        "=", 0xffc93904, 0xfff2f2f2, 24.0, BtnTiklama),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
