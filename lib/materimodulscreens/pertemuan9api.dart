import 'package:flutter/material.dart';
import 'package:wisata_mobile_6/models/makanan_model.dart';
import 'package:wisata_mobile_6/services/makanan_service.dart';
import 'package:wisata_mobile_6/widgets/makanan_card.dart';

class MateriAPIScreen extends StatelessWidget {
  final MakananService _makananService = MakananService();

  MateriAPIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Makanan Seafood",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder<List<MakananModel>>(
        future: _makananService.fetchMeals(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No meals available"));
          } else {
            final daftarSeafood = snapshot.data!;
            return ListView.builder(
              itemCount: daftarSeafood.length,
              itemBuilder: (context, index) {
                return MakananCard(makananModel: daftarSeafood[index]);
              },
            );
          }
        },
      ),
    );
  }
}
