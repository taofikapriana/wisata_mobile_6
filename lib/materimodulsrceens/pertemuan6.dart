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
          title: const Text("Pertemuan 6 : From Screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  //('images/<nama file>').
                  Image.asset(
                    'images/foto.jpg',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 20),

                  Image.asset(
                    'images/foto2.jpg',
                    width: 100,
                    height: 200,
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Masukan Nama',
                ),
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text('Jenis Kelamin : '),
                  Radio(
                      value: 'Laki-laki',
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      }),
                  Text('Laki-Laki'),
                  Radio(
                      value: 'Perempuan',
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      }),
                  Text('Perempuan'),
                ],
              ),
              SizedBox(height: 20),
              Text('Hobi :'),
              CheckboxListTile(
                  title: Text('olahraga'),
                  value: olahraga,
                  onChanged: (value) {
                    olahraga = value!;
                  }),
              SizedBox(height: 20),
              Text('Hobi :'),
              CheckboxListTile(
                  title: Text('Seni'),
                  value: seni,
                  onChanged: (value) {
                    seni = value!;
                  }),
              SizedBox(height: 20),
              SwitchListTile(
                  title: Text('Lulus'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
            ],
          ),
        ));
  }
}
