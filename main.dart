import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        title: 'Ana Sayfa',
        body: Center(
          child: Text(
            "Ana Sayfa",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ));
  }
}


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        title: 'Hakkımızda Sayfası',
        body: Center(
          child: Text(
            "Hakkımızda Sayfası",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ));
  }
}


class Layout extends StatefulWidget {
  const Layout({super.key, required this.body, required this.title});
  final Widget body;
  final String title;
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: widget.body,
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => AboutPage()));
          }, child: Icon(Icons.add)),
    );
  }
}
