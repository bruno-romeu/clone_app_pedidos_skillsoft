import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '406. 10 & CIA',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'W A PONTES ME',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'RUA DR EDGARD PEREIRA VELHO, 118, CENTRO',
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                      softWrap: true,
                    ),
                    Text(
                      'TAVARES - (51) 99920-9920',
                      style: TextStyle(color: Colors.grey[700], fontSize: 12),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Ver no mapa',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'COMPRADOR',
                style: TextStyle(color: Colors.grey[700], fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'LIMITE DE CONTAS A RECEBER DISPONÍVEL',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                    softWrap: true,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "R\$ 9.913,00",
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),

          Divider(color: Colors.grey[400], thickness: 1, height: 2),
        ],
      ),
    );
  }
}
