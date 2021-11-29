import 'package:flutter/material.dart';

class Aluno extends StatefulWidget {
  const Aluno({Key? key}) : super(key: key);

  @override
  _AlunoState createState() => _AlunoState();
}

class _AlunoState extends State<Aluno> {
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
    primary: Colors.purple,
    textStyle: const TextStyle(fontSize: 30),
  );

  int _cont = 0;

  void _contadoFun() {
    setState(() {
      _cont++;
      // ignore: avoid_print
      print("Numero de Clicks: $_cont");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
        child: Column(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 90,
                    backgroundImage:
                        NetworkImage("https://imgur.com/DuyIPfI.png")),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(bottom: 20, top: 20),
                child: Text(
                  "Vinicius de Oliveira",
                  style: TextStyle(fontSize: 30),
                )),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit ac, conubia lacus libero enim purus imperdiet lectus justo diam, faucibus blandit ultricies vestibulum quisque parturient natoque",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: styleButton,
                  onPressed: _contadoFun,
                  child: Text('Click Aqui'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
