import 'package:flutter/material.dart';

class Acerca extends StatelessWidget {
  const Acerca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: const Center(
        child: Text('Hola me llamo Marcos <3'),
      ),
    );
  }
}

class Configuraciones extends StatelessWidget {
  const Configuraciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuraciones'),
      ),
      body: const Center(
        child: Text('No hay nada que configurar :('),
      ),
    );
  }
}
