import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_cliente.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Clientes",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset("imagens/cliente1.png")),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Empresa de Software"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Image.asset("imagens/cliente2.png"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text("Empresa de Auditoria"),
            ),
          ],
        ),
      ),
    );
  }
}
