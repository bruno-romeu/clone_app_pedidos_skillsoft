import 'package:clone_app_pedidos/components/product_card.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
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
              labelText: 'Pesquisar produto...',
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
        itemCount: 20,
        itemBuilder: (context, index) {
          return ProductCard();
        },
      ),
    );
  }
}
