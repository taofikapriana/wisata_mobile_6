import 'package:flutter/material.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6State();
}

class _Pertemuan6State extends State<Pertemuan6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pertemuan 6 : Form Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                //('images/<nama file>'),
                Image.asset(
                  'images/kucing-marah.jpg',
                  height: 150,
                  width: 150,
                ),
                SizedBox(width: 30),
                Image.asset(
                  'images/kucing-punten.jpeg',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'Masukkan Nama',
              ),
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Jenis Kelamin : '),
                Radio(
                  value: 'Laki-Laki',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                Text('Laki-Laki'),
                Radio(
                  value: 'Perempuan',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                Text('Perempuan'),
              ],
            ),
            SizedBox(height: 20),
            Text('Hobi :'),
            CheckboxListTile(
              title: Text('Olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                });
              },
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
