import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GOPAL",
          style: TextStyle(color: Color(0xFF818181), fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF32FFF9),
      ),
      body: Column(
        children: [
          Text("hello word"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan Nama",
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  width: 1,
                  color: Colors.cyan,
                )),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Simpan"), style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white
          ),
          ),
        ],
      ),
    );
  }
}
