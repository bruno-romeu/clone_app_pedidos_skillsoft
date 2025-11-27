import 'package:flutter/material.dart';

class ToolsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
        title: Text('Outras Ferramentas'),
        elevation: 03,
        shadowColor: Colors.black87,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Colors.grey[800],
            padding: EdgeInsets.all(10),
            child: Text(
              'CADASTROS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            contentPadding: EdgeInsets.all(8),
            title: Text(
              'Gerar Catálogo dos Produtos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Gera um catálogo em PDF dos Produtos Enviados para o APP.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
