import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerCarbajal());

class MiDrawerCarbajal extends StatelessWidget {
  const MiDrawerCarbajal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Carbajal "),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: const Color(0xff7acc4d4),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Carbajal",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 15)),
                accountEmail: Text("Jose0456@CFE.com",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 15)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/AlBETO128/img_FlutterFlow_IOS/main/maxresdefault-121895408.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/AlBETO128/img_FlutterFlow_IOS/main/maxresdefault-1164698545.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/AlBETO128/img_FlutterFlow_IOS/main/th-336752550.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/AlBETO128/img_FlutterFlow_IOS/main/th-548108234.jpg"),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(
                  Icons.supervised_user_circle_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Usuario",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.group,
                  color: Color(0xff8c0606),
                ),
                title: Text(
                  "Empleados",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.confirmation_num,
                  color: Color(0xff869dc5),
                ),
                title: Text(
                  "Servicio",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.payment_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  "Paga Servicios",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.ac_unit_outlined,
                  color: Color(0xff02933e),
                ),
                title: Text(
                  "Nosotros",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.phone_android,
                  color: Color(0xff295255),
                ),
                title: Text(
                  "Contactanos",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
