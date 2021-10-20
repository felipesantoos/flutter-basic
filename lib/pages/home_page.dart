import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widgets básicos",
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Center(
        child: _imgAss(),
      ),
    );
  }

  _text() {
    return const Text(
      "Widgets básicos em Flutter!",
      style: TextStyle(
        fontSize: 20,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }

  _imgNet() {
    return Image.network(
        "https://criticalhits.com.br/wp-content/uploads/2021/03/harry-rony-hermione-harry-potter.jpg");
  }

  _imgAss() {
    return Image.asset(
      "assets/images/adolescentes_3.jpg",
      width: 300,
      height: 300,
      fit: BoxFit.cover, // fill, contain, cover, fitHeight, fitWidth
    );
  }
}
