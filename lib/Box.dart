// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:listacontactos/home_screen.dart';

class Box extends StatelessWidget {
  final Contacto contacto;

  final Contacto numero;
  const Box({Key? key, required this.contacto, required this.numero})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 35,
                child: Text(
                  "P",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      contacto.nombre,
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.call, color: Colors.blue),
                            Text(
                              "Llamar",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.blue,
                              ),
                              Text(
                                "Mensaje de Texto",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.blue),
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.video_camera_back, color: Colors.blue),
                              Text(
                                "Video",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.blue),
                              ),
                            ])
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                height: 350,
                width: double.infinity,
                child: Card(
                    color: const Color.fromARGB(255, 219, 216, 216),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 10,
                    margin: EdgeInsets.zero,
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 95,
                              ),
                              Text("Informacion de contacto"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.call),
                              Column(
                                children: [
                                  Text("+504 9902-9311"),
                                  Text(
                                    "Celular",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.video_call),
                                    SizedBox(
                                        width:
                                            30), // Agrega un SizedBox con un ancho deseado entre los íconos
                                    Icon(Icons.chat),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.maps_ugc),
                              SizedBox(width: 20),
                              Text("Enviar mensaje a "),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.contact_phone),
                              SizedBox(width: 20),
                              Text("Llamar a +504 9902-9311"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.duo),
                              SizedBox(width: 20),
                              Text("Videollamar a +504 9902-9311"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.send_outlined),
                              SizedBox(width: 20),
                              Text("Mensaje a +504 9902-9311"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.local_phone_outlined),
                              SizedBox(width: 20),
                              Text("Llamada de voz al +504 9902-9311"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.video_camera_front_outlined),
                              SizedBox(width: 20),
                              Text("Videollamada al +504 9902-9311"),
                            ],
                          ),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
