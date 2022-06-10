import 'package:flutter/material.dart';
import 'package:photo_app/helpers/api_helper.dart';
import 'package:photo_app/models/image_model.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ),);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<List<ImageModel>> fetchImageData;
  TextEditingController urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchImageData = APIHelper.apiHelper.fetchImageData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
                  controller: urlController,
                  onSubmitted: (value) {
                    APIHelper.apiHelper.searchString = value;
                    if(value == ""){
                      value = "+";
                    }
                    setState(() {});
                    fetchImageData = APIHelper.apiHelper.fetchImageData();
                    // http.get(Uri.parse("https://pixabay.com/api/?key=${APIHelper.apiHelper.APIKey}&q=${urlController.text}&image_type=photo"));
                  },
                ),
              ),),
          Expanded(
            flex: 9,
            child: FutureBuilder(
                future: fetchImageData,
                builder: (context, snapshot) {
                  if(snapshot.hasError){
                    return Center(
                      child: Text("ERROR: ${snapshot.error}"),
                    );
                  } else if (snapshot.hasData){
                    List<ImageModel> data = snapshot.data as List<ImageModel>;

                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context,i) => Container(
                          height: 250,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(data[i].largeImageURL),
                                fit: BoxFit.cover,
                              )
                          ),
                        ));
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
