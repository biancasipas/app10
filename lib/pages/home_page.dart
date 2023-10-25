import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Modelo'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Seu nome e sobrenome'),
            accountEmail: Text('seuemail@mail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/bart.jpg'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.announcement),
            title: const Text("Anúncios"),
            subtitle: const Text("mais informações..."),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/anuncios");
            },
          ),
          ListTile(
            leading: const Icon(Icons.cloud),
            title: const Text("Dados"),
            subtitle: const Text("mais informações..."),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/dados");
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Favoritos"),
            subtitle: const Text("mais informações..."),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/favoritos");
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Logout"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              print("Logout");
            },
          ),
        ],
      ),
    );
  }
}
