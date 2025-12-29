import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.shopping_cart, size: 50),
          title: Text(
            'BISCOITO RECHEADO GLUB 100G CHOCOLATE',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 20,
            children: [
              Column(
                children: [
                  Text(
                    '#1809',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Estoque: 257',
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '1,29',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(
          color: Colors.grey[400],
          thickness: 1,
          height: 2,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
