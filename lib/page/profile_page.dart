import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Profile page",
          style: TextStyle(
              color: Colors.white54,
          )),
      ),
      body: Column(
        children: [
          customForm(icon: Icon(Icons.credit_card),
          hintText: "Masukkan NIK", helperText: 'NIK Sesuai KTP'),
          customForm(icon: Icon(Icons.person),
          hintText: "Masukkan Nama",helperText:"Nama Sesuai KTP"),
          customForm(icon: Icon(Icons.mail),hintText: "Masukkan Email"),
          customForm(icon: Icon(Icons.phone),hintText: "Masukkan Nomor Telpon"),
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },
            child: Text("Simpan"), style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white
          ),
          ),
        ],
      ),
    );
  }

  Widget   customForm({required Icon icon, required String hintText, String? helperText }) {
    return Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              helperText: helperText,
              prefixIcon: icon,
              suffixIcon: Icon(Icons.chevron_right),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.cyan,
                  )),
            ),
          ),
        );
  }
}
