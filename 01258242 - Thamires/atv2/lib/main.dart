import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wiki Sims',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Wiki - 01258242 - Thamires Azevedo'),
    );
  }
}

//debugShowCheckedModeBanner: false,
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: Image.network(
                    'https://static.wikia.nocookie.net/simswiki/images/9/9e/%C3%8Dcone_The_Sims_4.png/revision/latest/scale-to-width-down/340?cb=20190717171608&path-prefix=pt-br'),
                title: Text('The Sims 1',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                onTap: () {
                  final snackBar = SnackBar(
                      content: Text(
                          " Data de lançamento: 2 de dezembro de 2003 \n \n Ainda Lançando? Não \n \n Pacotes de Expansão: 7 "));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Divider(),
              ListTile(
                leading: Image.network(
                    'https://static.wikia.nocookie.net/simswiki/images/9/9e/%C3%8Dcone_The_Sims_4.png/revision/latest/scale-to-width-down/340?cb=20190717171608&path-prefix=pt-br'),
                title: Text('The Sims 2',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                onTap: () {
                  final snackBar = SnackBar(
                      content: Text(
                          " Data de Lançamento: 14 de setembro de 2004 \n \n Ainda Lançando? Não \n \n Pacotes de Expansão: 8 \n \n Coleções de Objetos: 9"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Divider(),
              ListTile(
                leading: Image.network(
                    'https://static.wikia.nocookie.net/simswiki/images/9/9e/%C3%8Dcone_The_Sims_4.png/revision/latest/scale-to-width-down/340?cb=20190717171608&path-prefix=pt-br'),
                title: Text('The Sims 3',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                onTap: () {
                  final snackBar = SnackBar(
                      content: Text(
                          " Data de Lançamento: 2 de junho de 2009 \n \n Ainda Lançando? Não \n \n Pacotes de Expansão: 11 \n \n Coleções de Objetos: 9"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Divider(),
              ListTile(
                leading: Image.network(
                    'https://static.wikia.nocookie.net/simswiki/images/9/9e/%C3%8Dcone_The_Sims_4.png/revision/latest/scale-to-width-down/340?cb=20190717171608&path-prefix=pt-br'),
                title: Text('The Sims 4',
                    style:
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                onTap: () {
                  final snackBar = SnackBar(
                      content: Text(
                          " Data de Lançamento: 2 de setembro de 2014 \n \n Ainda Lançando? Sim \n \n Pacotes de Expansão: 10 \n \n Pacotes de Jogo: 9 \n \n Coleções de Objetos: 18"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ],
          ),
        )); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
