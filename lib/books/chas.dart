import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:pocket_programing_books/drawerfile.dart';


class Chas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C#',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String url =
      "https://books.goalkicker.com/CSharpBook/CSharpNotesForProfessionals.pdf";

  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C#"),
      ),
      drawer: Drawermain(),
      body: _loading
          ? Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,

        ),

      )
          : PDFViewer(
        document: _doc,
        indicatorBackground: Colors.orange,
        indicatorText: Colors.black,

        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}
