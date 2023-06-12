import 'package:flutter/material.dart';
import 'azul_page.dart';
import 'rojo_page.dart';
class VerdePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Marcelo Ontaneda'),
              accountEmail: Text('marcelo@gmail.com'),
              currentAccountPicture: Image.asset('images/avatar1.png'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AzulPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.upload_file),
              title: Text('Subir archivo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RojoPage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Página de inicio'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenid@s',
              style: TextStyle(
                fontSize: 24,
                color: Colors.green
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RojoPage()),
                );
              },
              child: Text('Ir a la pantalla Roja'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
