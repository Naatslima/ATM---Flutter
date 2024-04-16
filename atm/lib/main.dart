import 'package:atm/views/contatos.dart';
import 'package:atm/views/empresa.dart';
import 'package:flutter/material.dart';
import 'package:atm/views/servicos.dart';
import 'package:atm/views/clientes.dart';

void main() {
  runApp(MaterialApp(
    home: AppAtm(),
    debugShowCheckedModeBanner: false,
  ));
}

class AppAtm extends StatefulWidget {
  const AppAtm({Key? key}) : super(key: key);

  @override
  _AppAtmState createState() => _AppAtmState();
}

class _AppAtmState extends State<AppAtm> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void _abrirServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
  }

  void _abrirClientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Clientes()));
  }

  void _abrirContatos() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Contatos()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Color.fromARGB(255, 29, 17, 85),
        titleTextStyle: TextStyle(color: Colors.pink),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset("imagens/logo.png"),
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("imagens/menu_empresa.png"),
                  ),
                  const SizedBox(
                    width: 34,
                  ),
                  GestureDetector(
                    child: Image.asset("imagens/menu_servico.png"),
                    onTap: _abrirServico,
                  )
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset("imagens/menu_cliente.png"),
                    onTap: _abrirClientes,
                  ),
                  const SizedBox(
                    width: 34,
                  ),
                  GestureDetector(
                    child: Image.asset("imagens/menu_contato.png"),
                    onTap: _abrirContatos,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
