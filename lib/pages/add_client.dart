import 'package:flutter/material.dart';

class AddClient extends StatelessWidget {
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
        title: Text('Cadastrar Cliente'),
      ),
      body: Center(child: Text('Olá Mundo!')),
    );
  }
}
