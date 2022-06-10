import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper_class/helper_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextStyle dataStyle = const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold
  );
  TextStyle dataLightStyle = const TextStyle(
    fontSize: 18,
    color: Colors.black,
  );

  @override
  void initState() {
    super.initState();
    ApiHelper.apiHelper.fetchCOVID19Data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        title: const Text("COVID-19 Corona cases"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: ApiHelper.apiHelper.fetchCOVID19Data(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List allData = snapshot.data;

            return ListView.builder(
                itemCount: allData.length,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 18,right: 18),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 10,),
                                  Text("Location : ${allData[i].loc}",style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.indigo.shade900,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  const SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Text("Confirmed Cases Indian :",style: dataLightStyle,),
                                        Text(" ${allData[i].confirmedCasesIndian}",style: dataStyle,),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Text("Confirmed Cases Foreign : ",style: dataLightStyle,),
                                        Text("${allData[i].confirmedCasesForeign}",style: dataStyle,),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Discharged : ",style: dataLightStyle,),
                                      Text("${allData[i].discharged}",style: dataStyle,),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text("Deaths : ",style: dataLightStyle,),
                                      Text("${allData[i].deaths}",style: dataStyle,),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Text("Total Confirmed Cases : ",style: dataLightStyle,),
                                        Text("${allData[i].totalConfirmed}",style: dataStyle,),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                ],
                              ),
                            );
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade100,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text("${allData[i].loc}",style: TextStyle(
                              fontSize: 18,
                              color: Colors.indigo.shade900,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ),
                    ),
                  );
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}