import 'package:flutter/material.dart';
import 'package:scan_qr/page/profile_page.dart';
import 'package:scan_qr/page/scan_qr.dart';

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
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(""),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>ProfilePage()));
                  },
                  child: Text("Profile Page"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white
              ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>ScanQr()));
              },
              child: Text("ScanQR"), style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white
            ),
            ),
          ],
        ),
      ),
      drawer: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        color: Colors.lightBlueAccent,
        width: MediaQuery.of(context).size.width - 70,
        child: ListView(
          children: [
            Text("Gmail", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),  ),
            Divider(color: Colors.white54,height: 1, ),
            buildRow(iconData: (Icons.all_inbox),text: "Semua Pesan",),
            Divider(color: Colors.white54,height: 1,),
            buildRow(iconData: (Icons.inbox),text: "Pesan"),
            buildRow(iconData: (Icons.local_offer_outlined),text: "Promosi"),
            buildRow(iconData: (Icons.group),text: "Sosial"),
            buildRow(iconData: (Icons.info),text: "Update"),
            Text("Semua label", style: TextStyle(color: Colors.white60),),
            buildRow(iconData: (Icons.star_border),text: "Berbintang"),
            buildRow(iconData: (Icons.schedule),text: "Ditunda"),
            buildRow(iconData: (Icons.label_important_outline),text: "Penting"),
            buildRow(iconData: (Icons.send),text: "Terkirim"),
            buildRow(iconData: (Icons.schedule_send),text: "Terjadwal"),
            buildRow(iconData: (Icons.outbox),text: "Kontak Keluar"),
            buildRow(iconData: (Icons.insert_drive_file_outlined),text: "Draf"),
            buildRow(iconData: (Icons.mail_outline),text: "Semua email"),
            buildRow(iconData: (Icons.report_gmailerrorred_outlined),text: "Spam"),
            buildRow(iconData: (Icons.delete),text: "Sampah"),
            Text("Aplikasi Google", style: TextStyle(color: Colors.white60),),
            buildRow(iconData: (Icons.calendar_today),text: "Kalender"),
            buildRow(iconData: (Icons.contacts),text: "Kontak"),
            Divider(color: Colors.white54,height: 1,),
            buildRow(iconData: (Icons.settings),text: "Setelan"),
            buildRow(iconData: (Icons.help),text: "Bantuan & Masukan"),
          ],
        ),
      ),
    );
  }

  Row buildRow({required IconData iconData, text}) {
    return Row(
            children: [
              Icon(iconData, color: Colors.white,),
              Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 8.0),
              child: Text(text, style: TextStyle(color: Colors.white),),)
            ],
          );
  }
}
