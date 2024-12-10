import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wisata_mobile_6/models/makanan_model.dart';

class MakananService {
  // Link API untuk mengambil data makanan seafood
  final String baseUrl =
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";

  Future<List<MakananModel>> fetchMeals() async {
    // Mengakses API menggunakan method GET
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      // Membaca semua data response dan mengubah ke format JSON
      final data = json.decode(response.body);

      //Membaca berdasarkan key 'meals' dari JSON
      final List meals = data['meals'];

      //Mengembalikan list data meal yang sudah dikonversi ke model Meal
      return meals.map((makanan) => MakananModel.fromJson(makanan)).toList();
    } else {
      throw Exception("Gagal Memuat API!");
    }
  }
}
