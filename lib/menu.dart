import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.pink,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            //const SizedBox(
             // height: 16,) espaçamento
             itemmenu(texto: "Home", icone: Icons.home),
            const SizedBox(
              height: 16,
            ),
            itemmenu(texto: "Ajuda", icone: Icons.help),
            const SizedBox(
              height: 16,
            )

          ],
        )
        
      ),
    );
  }
}
Widget itemmenu({
  required String texto,
  required IconData icone,
}){
  return ListTile(
    leading: Icon(icone, color: Colors.black),
    title: Text (texto, style:TextStyle(color: Color.fromARGB(31, 250, 250, 250))),
    hoverColor: Colors.white,
  );
}
cabecalho({
  required String nome,
  required String email,
  required String imagem,
})=>
ListView(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imagem),
    ),
    const SizedBox(width: 20,),
    Column(
      children: [
        Text(nome, style: TextStyle(fontSize: 10, color: Colors.white),),
        const SizedBox(height: 4,),
        Text(email, style: TextStyle(fontSize: 10, color: Colors.white),),
      ],
    )
  ],

);
