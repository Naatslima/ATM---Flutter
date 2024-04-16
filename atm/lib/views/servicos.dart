import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({Key? key}) : super(key: key);

  @override
  _ServicoState createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Image.asset("imagens/detalhe_servico.png"),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Nossos Serviços",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text("Consultoria"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text("Calculo de preços"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text("Acompanhamento de projetos"),
          ),
        ]),
      ),
    );
  }
}
