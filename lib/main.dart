import 'package:clone_app_pedidos/pages/add_client.dart';
import 'package:clone_app_pedidos/pages/clients.dart';
import 'package:clone_app_pedidos/pages/orders.dart';
import 'package:clone_app_pedidos/pages/products.dart';
import 'package:clone_app_pedidos/pages/sale.dart';
import 'package:clone_app_pedidos/pages/saved_orders.dart';
import 'package:clone_app_pedidos/pages/tools_page.dart';
import 'package:flutter/material.dart';
import 'navigation/app_drawer.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(homeApp());
}

class homeApp extends StatelessWidget {
  const homeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/': (context) => HomePage(),
        '/tools': (context) => ToolsPage(),
        '/saved_orders': (context) => SavedOrders(),
        '/orders': (context) => Orders(),
        '/products': (context) => Products(),
        '/add_client': (context) => AddClient(),
        '/clients': (context) => Clients(),
        '/sale': (context) => Sale(),
      },

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
