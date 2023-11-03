import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scan_qr/page/home_page.dart';
// import 'package:share_plus/share_plus.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  String? qrResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(qrResult ?? ""),
            ),
            ElevatedButton(
              onPressed: () async {
                var res = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SimpleBarcodeScannerPage(),
                    ));
                setState(() {
                  if (res is String) {
                    qrResult = res;
                  }
                });
              },
              child: const Text('Open Scanner'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              FlutterClipboard.copy('$qrResult}')
                  .then(( value ) =>
                  Fluttertoast.showToast(
                      msg: "${qrResult}",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  )
              );
            }, child: Text("copy")),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>HomePage()));
              },
              child: Text("Home Page"), style: ElevatedButton.styleFrom(
            ),
            ),
            // ElevatedButton(onPressed: (){
            //   Share.share('check out my website https://example.com');
            // }, child: Text("Share")),
          ],
        ),
      ),
    );
  }
}
