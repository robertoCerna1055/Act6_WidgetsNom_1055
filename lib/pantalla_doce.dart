import 'package:flutter/material.dart';
import 'dart:ui'; // Necesario para ImageFilter.blur

class PantallaDoce extends StatefulWidget {
  const PantallaDoce({Key? key}) : super(key: key);

  @override
  State<PantallaDoce> createState() => _PantallaDoceState();
}

class _PantallaDoceState extends State<PantallaDoce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1b0fc5),
        title: const Text(
          'Pantalla 4 Cerna',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              List.filled(10000, '0').join(),
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 250,
                    height: 250,
                    color: Colors.black.withOpacity(0.1),
                    child: const Text(
                      'Blur',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
