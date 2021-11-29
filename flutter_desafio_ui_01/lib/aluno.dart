import 'package:flutter/material.dart';

class Aluno extends StatefulWidget {
  const Aluno({Key? key}) : super(key: key);

  @override
  _AlunoState createState() => _AlunoState();
}

class _AlunoState extends State<Aluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 90),
        child: Column(
          children: [
            const Expanded(
              child:Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 85,
                  backgroundImage: NetworkImage("https://imgur.com/EPUWxPP.png")
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
