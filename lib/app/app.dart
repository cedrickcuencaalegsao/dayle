import 'package:flutter/material.dart';
import '../pages/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  List<Widget> _pages = <Widget>[
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dayle Planner.',
            style: TextStyle(
              fontFamily: 'FredokaOne',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text(
                  "Cedrick Alegsao",
                  style: TextStyle(
                    fontFamily: 'Antipasto',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  'cedrickalegsao@email.com',
                  style: TextStyle(
                    fontFamily: 'FredokaOne',
                    fontSize: 16.0,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'CA',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: _pages[0],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
