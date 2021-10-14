import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButonu extends StatelessWidget {
  //Buton taslak parametreleri
  //Butona verilen değerleri başka butonlarla değiştirmek istendiğinde parametreleri diğer yerler için değiştirmek
  //için bir çalışma yapıyoruz.
  //Örneğin atanan bir renk yerine dolgurengi değişkeni tanarak istendiği zaman değiştirilebilir.
  //Statik olarak verilen buton rengi, font boyutu gibi değerler yerine aşağıda verilen final değerler yazılmış oldu.
  //BU işlemden sonra bu parametrelerin verilmediği zaman hata döner.

  final String metin;

  final int dolguRengi;

  final int metinRengi;

  final double metinBoyutu;

  final Function tiklama;

  const HesapMakinesiButonu(this.metin, this.dolguRengi, this.metinRengi,
      this.metinBoyutu, this.tiklama);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 90,
        height: 90,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: () {
            tiklama(metin);
          },
          textColor: Color(metinRengi),
          color: Color(dolguRengi),
          child: Text(
            metin,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: metinBoyutu,
            )),
          ),
        ),
      ),
    );
  }
}
