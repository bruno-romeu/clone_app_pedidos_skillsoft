import 'package:flutter/material.dart';

class SavedOrders extends StatefulWidget {
  @override
  State<SavedOrders> createState() => _SavedOrdersState();
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, this.onDiscard, this.onModify});

  final VoidCallback? onDiscard;
  final VoidCallback? onModify;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 253, 49, 34),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(6),
                ),
              ),
              
            ),
            onPressed: onDiscard ?? () {},
            child: const Text('Descartar'),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 255, 147, 7),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(6),
                ),
              ),
            ),
            onPressed: onModify ?? () {},
            child: const Text('Alterar'),
          ),
        ),
      ],
    );
  }
}

class _SavedOrdersState extends State<SavedOrders> {
  String? _selectedOrder;

  void _selectedOrderApp(String? OrderId) {
    setState(() {
      _selectedOrder = OrderId;
    });
  }

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
        title: Text('Pedidos Salvos'),
        elevation: 03,
        shadowColor: Colors.black87,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () => _selectedOrderApp('1'),
                tileColor: Colors.white,
                leading: Radio<String>(
                  value: '1',
                  groupValue: _selectedOrder,
                  onChanged: _selectedOrderApp,
                ),
                title: Text(
                  '406 - W A PONTES ME',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Emissão: 17/11/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Entrega: 29/11/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'Obs.: Adicionar 5% de desconto no total',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Desconto: 0,00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produtos: 56,90',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Flex: 2,39',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Total: 59,29',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Divider(height: 2, thickness: 1),

            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () => _selectedOrderApp('2'),
                tileColor: Colors.white,
                leading: Radio<String>(
                  value: '2',
                  groupValue: _selectedOrder,
                  onChanged: _selectedOrderApp,
                ),
                title: Text(
                  '398 - FABIANO NEVES RODRIGUES',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Emissão: 09/11/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Entrega: 12/11/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'Obs.: Cliente vai mandar o pix depois.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Desconto: 3,90',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produtos: 37,80',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Flex: -3,90',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Total: 33,90',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Divider(height: 2, thickness: 1),

            Container(
              color: Colors.white,
              child: ListTile(
                onTap: () => _selectedOrderApp('3'),
                tileColor: Colors.white,
                leading: Radio<String>(
                  value: '3',
                  groupValue: _selectedOrder,
                  onChanged: _selectedOrderApp,
                ),
                title: Text(
                  '406 - W A PONTES ME',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Emissão: 22/10/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Entrega: 25/10/2025',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'Obs.: ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Desconto: 0,00',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produtos: 85,20',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Flex: 7,97',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          'Total: 93,17',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Divider(height: 2, thickness: 1),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12.0),
        child: ButtonTypesGroup(),
      ),
    );
  }
}
