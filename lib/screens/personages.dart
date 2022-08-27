import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taarix_app/screens/my_home_page.dart' as home;
import 'package:taarix_app/screens/one_personage_page.dart';

import 'my_home_page.dart';

class Personages extends StatefulWidget {


  const Personages({Key? key}) : super(key: key);

  @override
  State<Personages> createState() => _PersonagesState();
}
const title = "Personnages";
late Widget drawer;
class _PersonagesState extends State<Personages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title,
        style: GoogleFonts.inter(
          fontStyle: FontStyle.normal,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const home.MyHomePage();
                }));
              },
              tooltip: "retour a la page d'accueil",
              icon: const Icon(Icons.arrow_back_outlined,
                color: Colors.white,
              )
          ),
          actions: [
            IconButton(icon: const Icon(Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text(title,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Parametres",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
            )
          ],
          elevation: 4,
        ),
        body: const AllGrid(),
      ),
    );
  }
}
class AllGrid extends StatelessWidget {
  const AllGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GridView.count(
      crossAxisCount: 2,
      children: <Widget> [
        Container(
          child: const OneGridC(
              imagePath: "assets/images/bamba.jpg",
              name: "Cheikh Ahmadou BAMBA"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/malick.jpg",
              name: "El Hadj Malick SY"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/sankara.jpg",
              name: "Thomas Isidor SANKARA"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/cad.jpg",
              name: "Cheikh Anta DIOP"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/krumah.jpg",
              name: "Kwame KRUMAH"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/diop.jfif",
              name: "Lat Dior DIOP"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/mamadoudia.jfif",
              name: "Mamadou DIA"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/sitoe.jpg",
              name: "Aline Sitoe DIATTA"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/siki.jfif",
              name: "Battlin SIKI"),
        ),
        Container(
          child: const OneGridC(
              imagePath: "assets/images/blondin.jpg",
              name: "Omar Blondin DIOP"),
        ),
      ],
    );
  }
}

class OneGridC extends StatelessWidget {
  final String imagePath;
  final String name;
  const OneGridC({
    Key? key, 
    required this.imagePath,
    required this.name,
  }):super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const OnePersonage();
        }));
      },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children:  <Widget>[
            Image.asset(imagePath,
              height: 150.0,
              width: 150.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 5.0,),
            Text(name,
              style: GoogleFonts.inter(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }

}

