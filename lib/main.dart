import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferencia'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Número da Conta", hintText: '0000'),
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                  labelText: "Valor", hintText: '0.00'),
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            child: Text("Confirmar"),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(100.0, 1593)),
          ItemTransferencia(Transferencia(100.0, 1593)),
          ItemTransferencia(Transferencia(100.0, 1593)),
          ItemTransferencia(Transferencia(100.0, 1593)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(this._transferencia.valor.toString()),
        subtitle: Text(this._transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
