import 'package:flutter/material.dart';

class menuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'APP Pedido de Venda',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Text(
            'Início',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(leading: Icon(Icons.attach_money), title: Text('Vender'),
          onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/sale');
            },),

          Divider(),

          Text(
            'Dados',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
          ListTile(leading: Icon(Icons.person), title: Text('Clientes'),
          onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/clients');
            },),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Cadastrar Cliente'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/add_client');
            },
          ),
          ListTile(
            leading: Icon(Icons.add_box),
            title: Text('Produtos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/products');
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Consulta Pedidos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/orders');
            },
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text('Pedidos Salvos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/saved_orders');
            },
          ),
          ListTile(
            leading: Icon(Icons.handyman_sharp),
            title: Text('Outras Ferramentas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/tools');
            },
          ),

          Divider(),

          Text(
            'Configurações',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.question_mark_sharp),
            title: Text('Suporte'),
          ),
          ListTile(leading: Icon(Icons.exit_to_app), title: Text('Sair')),
        ],
      ),
    );
  }
}
