import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:photo_app/models/image_model.dart';

class APIHelper{
  APIHelper._();
  static final APIHelper apiHelper = APIHelper._();

  String APIKey = "27284354-f1fc5e1ebd21c381c4b0a8e54";
  String searchString = "yellow+flowers";

  Future<List<ImageModel>> fetchImageData() async{
  String API = "https://pixabay.com/api/?key=$APIKey&q=$searchString&image_type=photo";

  http.Response res = await http.get(Uri.parse(API));

  Map data = jsonDecode(res.body);

   List allData = data["hits"];

  List<ImageModel> imageData = allData.map((e) => ImageModel.fromJson(e)).toList();

  return imageData;
  }
}