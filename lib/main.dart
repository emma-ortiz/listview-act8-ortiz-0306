import 'package:flutter/material.dart';

void main() => runApp(const FruteriaApp());

class FruteriaApp extends StatelessWidget {
  const FruteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Fruteria App',
      home: Frutas(),
    );
  }
}// fin clase FruteriaApp

class Frutas extends StatelessWidget {
  const Frutas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fruteria Emma 6j',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 138, 209),
        // Icono de "Caja" a la izquierda (Leading)
        leading: const Icon(
          Icons.shopping_basket,
          color: Color.fromARGB(255, 5, 5, 5),
        ),
        // Iconos de Manzana y Palomita a la derecha (Actions)
        actions: const [
          Icon(Icons.apple, color: Color.fromARGB(255, 0, 0, 0)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.check, color: Color.fromARGB(255, 0, 0, 0)), // "Palomita"
          ),
        ],
      ),


     body: ListView(
  padding: const EdgeInsets.all(20.0),
  children: [
    // Elemento 1: Inicio
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.home, color: Colors.white),
        ),
        title: const Text('Frutas', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('Ver lista de frutas'),
        trailing: const Icon(Icons.chevron_right, color: Colors.blueAccent),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Navegando a Inicio...')),
          );
        },
      ),
    ),

    const SizedBox(height: 10), // Espacio entre tarjetas

    // Elemento 2: Perfil
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: const Text('Frutas dulces', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('Editar información '),
        trailing: const Icon(Icons.chevron_right, color: Colors.orangeAccent),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Abriendo...')),
          );
        },
      ),
    ),

    const SizedBox(height: 10),

    // Elemento 3: Pagos
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.greenAccent,
          child: Icon(Icons.account_balance_wallet, color: Colors.black54),
        ),
        title: const Text('Ofertas', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('Revisar'),
        trailing: const Icon(Icons.chevron_right, color: Colors.greenAccent),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Cargando métodos de pago...')),
          );
        },
      ),
    ),

    const SizedBox(height: 10),

    // Elemento 4: Ajustes
    Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.settings, color: Colors.white),
        ),
        title: const Text('Promocion', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('viendo promociones'),
        trailing: const Icon(Icons.chevron_right, color: Colors.deepPurpleAccent),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Entrando...')),
          );
        },
      ),
    ),
  ],
),

    ) ;
  }
}// fin clase frutas
