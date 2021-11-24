import 'package:flutter/material.dart';
void main() => runApp(MeuAplicativo());
class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),

    );
  }
}
class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Primeira Rota'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
          UserAccountsDrawerHeader(
          decoration: BoxDecoration(
          color: Colors.red,
          ),
          accountName: Text("Nathan"),
          accountEmail: Text("nathan@nathan.com.br"),
          currentAccountPicture: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        ListTile(
          leading: Icon(Icons.video_collection),
          title: Text("Rota 02"),
          subtitle: Text("Siga para a Rota 02."),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print('Ir para a Rota 02.');
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.analytics),
          title: Text("Rota 03"),
          subtitle: Text("Siga para a Rota 03"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print('Ir para a Rota 03.');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TerceiraRota()),
            );
          },
        ),
        ListTile(
        leading: Icon(Icons.home),
    title: Text("Rota 01"),
          subtitle: Text("Voltar para a Rota 01"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print('Voltar para a Rota 01.');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PrimeiraRota()),
            );
          },
        ),
            ],
          ),
        ),
      body: Center(
        child: const Text('Corpo'),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Nathan"),
              accountEmail: Text("nathan@nathan.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 02.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraRota()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Rota 01"),
              subtitle: Text("Voltar para a Rota 01"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Voltar para a Rota 01.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrimeiraRota()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a Primeira Rota'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Rota'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Nathan"),
              accountEmail: Text("nathan@nathan.com.br"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Rota 02"),
              subtitle: Text("Siga para a Rota 02."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 02.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Rota 03"),
              subtitle: Text("Siga para a Rota 03"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Ir para a Rota 03.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraRota()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Rota 01"),
              subtitle: Text("Voltar para a Rota 01"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Voltar para a Rota 01.');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrimeiraRota()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a Primeira Rota'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}