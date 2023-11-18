import 'package:flutter/material.dart';
import 'package:listacontactos/Box.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescrenState();
}

class _HomescrenState extends State<Homescreen> {
  List<Contacto> contacto = [
    Contacto(
      nombre: "A besi",
      numero: "3367449",
    ),
    Contacto(
      nombre: "Abby",
      numero: "7367449",
    ),
    Contacto(
      nombre: "Abg. Alejandro Redondo Credimovil tgu",
      numero: "4367449",
    ),
    Contacto(
      nombre: "Abg.Diogenes",
      numero: "2367449",
    ),
    Contacto(
      nombre: "Abg Juan Reyes",
      numero: "1367449",
    ),
    Contacto(
      nombre: "Abigail Amador",
      numero: "9867449",
    ),
    Contacto(
      nombre: "Abner",
      numero: "8367999",
    ),
    Contacto(
      nombre: "Abog Mary Puerto",
      numero: "9367449",
    ),
    Contacto(
      nombre: "Abogado Zuniga UNAH",
      numero: "8367499",
    ),
    Contacto(
      nombre: "Adelaida",
      numero: "2363449",
    ),
    Contacto(
      nombre: "Alamitos",
      numero: "9307449",
    ),
    Contacto(
      nombre: "Alcaldia",
      numero: "8367449",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: contacto.length,
          itemBuilder: (context, index) {
            final contactos = contacto[index];
            return Card(
                child: ListTile(
              title: Text(contactos.nombre),
              leading: CircleAvatar(
                  child: Text(
                contactos.nombre[0],
              )),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Box(
                          contacto: contactos,
                          numero: contactos,
                        )));
              },
            ));
          }),
    );
  }
}

class Contacto {
  String nombre = "";
  String numero = "";

  Contacto({required this.nombre, required this.numero});
}
