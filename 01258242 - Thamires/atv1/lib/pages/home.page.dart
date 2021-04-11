import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/app-logo.png"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text("Thamires Azevedo"),
          subtitle: Text("14/04/2021 18:00"),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Oi professor, tudo bem? Espero que sim, \n"
              "como o sr solicitou, teria que ter um SOBRE, mas pensando de forma mais clara, preferi colocar ele em forma de cards no feed. \n"
              "Somado a isso, ao clicar no botão abaixo, será redirecionado para a página da UNINASSAU, \nEspero que goste. \n \n"
              "Informações do Curso: Sistemas de Informação - 7º Período - Uninassau \n"
              "Aluna: Thamires Thainã Ramos Azevedo 01258242 \n"
              "Endereço: rua tal | Número: tal | CEP: 00000-000 | Complemento: maria do bairro"),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.link),
                onPressed: () {
                  openURL();
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
void openURL() async {
  const url = 'https://www.uninassau.edu.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    /// Não è possível abrir a URL
  }
}