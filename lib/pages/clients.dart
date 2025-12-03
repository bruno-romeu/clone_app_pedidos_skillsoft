import 'package:clone_app_pedidos/components/client_card.dart';
import 'package:flutter/material.dart';

class Clients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: const Icon(Icons.arrow_back),
            );
          },
        ),
        title: SizedBox(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome, Endereço, CNPJ, Inscrição Estadual',
              suffixIcon: Icon(Icons.close),
            ),
          ),
        ),
        actions: [Icon(Icons.sort_by_alpha)],
        elevation: 03,
        shadowColor: Colors.black87,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsetsGeometry.all(10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ClientCard();
        },
      ),
    );
  }
}
