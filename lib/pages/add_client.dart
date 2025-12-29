import 'package:flutter/material.dart';

class AddClient extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class ToggleTipoPessoa extends StatelessWidget {
  final bool isPJ;
  final ValueChanged<bool> onChanged;

  ToggleTipoPessoa({required this.isPJ, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(100),
      child: SegmentedButton<bool>(
        showSelectedIcon: false,
        segments: const <ButtonSegment<bool>>[
          ButtonSegment<bool>(value: true, label: Text('Jurídica')),
          ButtonSegment<bool>(value: false, label: Text('Física')),
        ],
        selected: {isPJ},
        onSelectionChanged: (newSet) => onChanged(newSet.first),
        style: SegmentedButton.styleFrom(
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.grey[600],
          selectedForegroundColor: Colors.black,
          selectedBackgroundColor: Colors.white,
          side: BorderSide(color: Colors.transparent),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          textStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _CadastroPageState extends State<AddClient> {
  bool isPJ = true;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ToggleTipoPessoa(
              isPJ: isPJ,
              onChanged: (value) {
                setState(() => isPJ = value);
              },
            ),
          ),

          SizedBox(height: 20),
          Expanded(child: isPJ ? FormPJ() : FormPF()),
        ],
      ),
    );
  }
}

class FormPJ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CNPJ'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

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
                            vertical: 10,
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
                            vertical: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),

              Text('Razão Social'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),
              Text('Nome Fantasia'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),

              Text('Endereço'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),

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
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

              Text('Referência'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

              Text('Whatsapp'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('E-Mail'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('Inscrição Estadual'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('Observação'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

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
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FormPF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CPF'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Center(
                child: FilledButton(
                  onPressed: () {},
                  child: Text('Consulta'),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),

              Text('Nome'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),

              Text('Nome Fantasia'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),

              Text('Endereço'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              SizedBox(height: 5),

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
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

              Text('Referência'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

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
              const SizedBox(height: 5),

              Text('Whatsapp'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('E-Mail'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('Inscrição Estadual'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

              Text('Observação'),
              TextField(style: TextStyle(decorationColor: Colors.blue[800])),
              const SizedBox(height: 5),

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
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
