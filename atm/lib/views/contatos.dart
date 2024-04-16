import 'package:flutter/material.dart';

class Contatos extends StatefulWidget {
  const Contatos({Key? key}) : super(key: key);

  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_contato.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Contatos",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("atendimento@atm.com.br"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("11-4807-6658"),
            )
          ],
        ),
      ),
    );
  }
}
