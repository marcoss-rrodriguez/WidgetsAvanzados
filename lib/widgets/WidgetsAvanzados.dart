import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_avanzados/widgets/paginas.dart';

class WidgetsAvanzados extends StatefulWidget {
  const WidgetsAvanzados({super.key});
  @override
  State<WidgetsAvanzados> createState() => _DetectorGestosState();
}

class _DetectorGestosState extends State<WidgetsAvanzados> {
  bool condi = false;
  String _t1 = 'Tocar';
  String _t2 = 'Doble toque';
  String _t3 = 'Mantener Presionado';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const WidgetsAvanzados(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Acerca de"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Acerca(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text("Configuracion"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Configuraciones(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Menu Principal"),
        ),
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      condi = !condi;
                      _t1 = condi ? ';)' : 'Tocar';
                    });
                    final snackBar = SnackBar(content: Text(_t1));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(_t1),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      condi = !condi;
                      _t2 = condi ? '>:C' : 'Doble toque';
                    });
                    final snackBar = SnackBar(content: Text(_t2));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(_t2),
                  ),
                ),
                GestureDetector(
                  onLongPress: () {
                    setState(() {
                      condi = !condi;
                      _t3 = condi ? 'B)' : 'Mantener presionado';
                    });
                    final snackBar = SnackBar(content: Text(_t3));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(_t3),
                  ),
                ),
              ]),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
              child: const Text(
                "*",
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                const snackBar =
                    SnackBar(content: Text('¡Botón flotante presionado!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }),
        ]));
  }
}
