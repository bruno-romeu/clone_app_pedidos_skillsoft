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
        title: Text('Cadastro de Cliente'),
        elevation: 03,
        shadowColor: Colors.black87,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('CNPJ'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FilledButton(
                          onPressed: () {},
                          child: Text('Preenchimento Automático'),
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FilledButton(
                          onPressed: () {},
                          child: Text('Consulta'),
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),

                Text('Razão Social'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                SizedBox(height: 8),

                Text('Nome Fantasia'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                SizedBox(height: 8),

                Text('Endereço'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Número'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Complemento'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bairro'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CEP'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cidade'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('UF'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Text('Referência'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fone 1'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fone 2'),
                          TextField(
                            style: TextStyle(decorationColor: Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                Text('Whatsapp'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Text('E-Mail'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Text('Inscrição Estadual'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Text('Observação'),
                TextField(style: TextStyle(decorationColor: Colors.blue[800])),
                const SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Confirmar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.green[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
