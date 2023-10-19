import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carga Imagenes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Carga Imagenes Flutter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250,
                width: 200,
                child: SvgPicture.asset("assets/dol.svg", color: Colors.red,),
              ),
              SizedBox(
                height: 250,
                width: 200,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png", fit: BoxFit.fitWidth),
              )
            ],
          ),
        ),
      ),
    );
  }
}
