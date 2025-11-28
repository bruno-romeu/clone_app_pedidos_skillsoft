import 'package:flutter/material.dart';

class SavedOrders extends StatefulWidget {
  @override
  State<SavedOrders> createState() => _SavedOrdersState();
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({
    super.key,
    required this.enabled,
    required this.onDiscard,
    required this.onModify,
  });
  final bool enabled;
  final VoidCallback onDiscard;
  final VoidCallback onModify;

  static const Color discardColor = Color.fromARGB(255, 253, 49, 34);
  static const Color modifyColor = Color.fromARGB(255, 255, 147, 7);

  @override
  Widget build(BuildContext context) {
    final VoidCallback? discardPressed = enabled ? onDiscard : null;
    final VoidCallback? modifyPressed = enabled ? onModify : null;

    final Color finalDiscardColor = enabled
        ? discardColor
        : const Color.fromARGB(82, 253, 49, 34).withValues(alpha: 0.5);

    final Color finalModifyColor = enabled
        ? modifyColor
        : const Color.fromARGB(255, 7, 218, 255).withValues(alpha: 0.5);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.disabled)) {
                  return discardColor.withValues(alpha: 0.5);
                }
                return discardColor;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
            ),
            onPressed: discardPressed,
            child: const Text('Descartar'),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.disabled)) {
                  return modifyColor.withValues(alpha: 0.5);
                }
                return modifyColor;
              }),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
            ),
            onPressed: modifyPressed,
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

  void _handleDiscard() {
    print('Descartar pedido ID $_selectedOrder');
  }

  void _handleModify() {
    print('Alterar pedido ID $_selectedOrder');
  }

  @override
  Widget build(BuildContext context) {
    final bool isOrderSelected = _selectedOrder != null;
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
        child: ButtonTypesGroup(
          enabled: isOrderSelected,
          onDiscard: _handleDiscard,
          onModify: _handleModify,
        ),
      ),
    );
  }
}
