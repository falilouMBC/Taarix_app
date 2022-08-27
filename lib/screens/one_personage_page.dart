import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taarix_app/screens/personages.dart';

import 'my_home_page.dart';
import 'personages.dart' as perso;
class OnePersonage extends StatefulWidget {
  const OnePersonage({Key? key}) : super(key: key);

  @override
  State<OnePersonage> createState() => _OnePersonageState();
}
const title = "Cheikh Anta DIOP";
class _OnePersonageState extends State<OnePersonage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title,
          style: GoogleFonts.inter(
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
          ),
        ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Personages();
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
      ),
    );
  }
}
