import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaEmpresa(),
      )
    );
  }
  void _abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaContato(),
      )
    );
  }
  void _abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaServico(),
      )
    );
  }
  void _abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaCliente(),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset("images/menu_empresa.png"),
                      onTap: _abrirEmpresa,
                    ),
                    GestureDetector(
                      child: Image.asset("images/menu_servico.png"),
                      onTap: _abrirServico,
                    ),                                     
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset("images/menu_cliente.png"),
                      onTap: _abrirCliente,
                    ),
                    GestureDetector(
                      child: Image.asset("images/menu_contato.png"),
                      onTap: _abrirContato,
                    ),                                     
                  ],
                ),
              ),            
            ],
          ),
        ),      
      ), 
    );
  }
}