import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/model_class.dart';

class ApiHelper{
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  String BASE_URL = "https://api.rootnet.in/covid19-in/stats";
  String ENDPOINT = "/latest";

  fetchCOVID19Data() async {
    Uri API = Uri.parse(BASE_URL + ENDPOINT);

    http.Response response = await http.get(API);

    if (response.statusCode == 200) {
      Map<String,dynamic> data = jsonDecode(response.body);
      List<COVID19Data> allData = [];

      COVID19Data  covid19data = COVID19Data.fromJson(data);
      COVID19Data  covid19data1 = COVID19Data.fromJson1(data);
      COVID19Data  covid19data2 = COVID19Data.fromJson2(data);
      COVID19Data  covid19data3 = COVID19Data.fromJson3(data);
      COVID19Data  covid19data4 = COVID19Data.fromJson4(data);
      COVID19Data  covid19data5 = COVID19Data.fromJson5(data);
      COVID19Data  covid19data6 = COVID19Data.fromJson6(data);
      COVID19Data  covid19data7 = COVID19Data.fromJson7(data);
      COVID19Data  covid19data8 = COVID19Data.fromJson8(data);
      COVID19Data  covid19data9 = COVID19Data.fromJson9(data);
      COVID19Data  covid19data10 = COVID19Data.fromJson10(data);

      allData.add(covid19data);
      allData.add(covid19data1);
      allData.add(covid19data2);
      allData.add(covid19data3);
      allData.add(covid19data4);
      allData.add(covid19data5);
      allData.add(covid19data6);
      allData.add(covid19data7);
      allData.add(covid19data8);
      allData.add(covid19data9);
      allData.add(covid19data10);
      return allData;
    } else {
      print("No data");
    }
  }
}