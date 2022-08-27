import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taarix_app/screens/history_page.dart';
import 'package:taarix_app/screens/personages.dart';
import 'package:taarix_app/screens/stories_page.dart';
import 'package:taarix_app/screens/work_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
const title = 'Taarix';
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                fontStyle: FontStyle.italic,
                letterSpacing: .5
              )
            ),
          ),
          centerTitle: true,
        ),
          drawer: DrawerMenu(),
          body: Container(
          child: const GridViewClass(),
        )
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
  }
}

class GridViewClass extends StatelessWidget {
  const GridViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GridView.count(
      crossAxisCount: 2,
      children: <Widget> [
        Container(
          child: PersonageImg(),
        ),
        Container(
          child: WorkImg(),
        ),
        Container(
          child: HistoryImg(),
        ),
        Container(
          child: const StoryImg(),
        ),
      ],
    );
  }
}

class PersonageImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Personages();
        }));
      },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children:  <Widget>[
            Image.asset("assets/images/cad.jpg",
              height: 150.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5.0,),
            Text("Personnages",
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

class WorkImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const WorksPage();
        }));
      },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children:  <Widget>[
              Image.asset("assets/images/ouvrage.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 5.0,),
            Text("Ouvrages",
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

class HistoryImg extends StatelessWidget {
  const HistoryImg({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const History();
        }));
      },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children:  <Widget>[
            Image.asset("assets/images/history.jfif",
              height: 150.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5.0,),
            Text("Histoires",
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

class StoryImg extends StatelessWidget {
  const StoryImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const StoryPage();
        }));
      },
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children:  <Widget>[
            Image.asset("assets/images/conte.jpg",
              height: 150.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5.0,),
            Text("Contes",
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