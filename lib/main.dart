import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

void main(){
  runApp(Projeto1());
  

}
class Projeto1 extends StatefulWidget {
  const Projeto1({super.key});

  @override
  State<Projeto1> createState() => _Projeto1State();
}

class _Projeto1State extends State<Projeto1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Projeto2(),
    );
  }

  
}
class Projeto2 extends StatefulWidget {
  const Projeto2({super.key});

  @override
  State<Projeto2> createState() => _Projeto2State();
}

class _Projeto2State extends State<Projeto2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(title:Text("Olá") ,),
      body: Text("Olá"),
    );
  }
}
