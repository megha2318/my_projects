import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String DD = "";
  String MM = "";
  String YY = "";

  TextEditingController dateController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  String date = "";
  String month = "";
  String year = "";

  String finalDate = "00";
  String finalMonth = "00";
  String finalYear = "00";

  String nextDate = "00";
  String nextMonth = "00";

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();

    setState(() {
      date = DateFormat.d().format(dateTime);
      month = DateFormat.MMM().format(dateTime);
      year = DateFormat.y().format(dateTime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
        backgroundColor: const Color(0xff203a43),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 5),
            alignment: const Alignment(-0.9, 1),
            child: const Text(
              "Today's Date",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                width: 380,
                child: Text(
                  "$date $month, $year",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0Xff1c003e),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 5),
            alignment: const Alignment(-0.9, 1),
            child: const Text(
              "Date of Birth",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 120,
                child: TextField(
                  controller: dateController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "DD",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0Xffe5e5e5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 120,
                child: TextField(
                  controller: monthController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "MM",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0Xffe5e5e5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 120,
                child: TextField(
                  controller: yearController,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    hintText: "YY",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0Xffe5e5e5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  dateController.clear();
                  monthController.clear();
                  yearController.clear();

                  setState(() {
                    DD = " ";
                    MM = " ";
                    YY = " ";

                    finalDate = "00";
                    finalMonth = "00";
                    finalYear = "00";

                    nextDate = "00";
                    nextMonth = "00";
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 184,
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0Xff000000),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff13547a)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  DD = dateController.text;
                  MM = monthController.text;
                  YY = yearController.text;

                  setState(() {
                    finalDate = "${int.parse(date) - int.parse(DD)}";
                    DateTime dateTime = DateTime.now();
                    month = dateTime.month.toString();
                    finalMonth = "${int.parse(month) - int.parse(MM)}";
                    finalYear = "${int.parse(year) - int.parse(YY)}";

                    // nextDate = (31 - int.parse(finalDate)).toString();
                    // nextMonth = (12 - int.parse(finalMonth)).toString();

                    if (DD.length <= 2 &&
                        MM.length <= 2 &&
                        YY.length <= 4 &&
                        YY.length >= 4) {
                      if (int.parse(DD) >= 0 &&
                          int.parse(DD) <= 31 &&
                          int.parse(MM) >= 0 &&
                          int.parse(MM) <= 12 && int.parse(YY) <= int.parse(year)) {
                        if ((int.parse(date) - int.parse(DD)) < 0 ||
                            (int.parse(month) - int.parse(MM)) < 0) {
                          if (int.parse(MM) == 1 ||
                              int.parse(MM) == 3 ||
                              int.parse(MM) == 5 ||
                              int.parse(MM) == 7 ||
                              int.parse(MM) == 8 ||
                              int.parse(MM) == 10 ||
                              int.parse(MM) == 12) {
                            finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                            finalDate = "${31 + (int.parse(date) - int.parse(DD))}";
                            // finalYear = "${(int.parse(year) - int.parse(YY)) + 1}";
                            finalMonth = "${12 + (int.parse(month) - int.parse(MM))}";
                            nextDate = (31 - int.parse(finalDate)).toString();
                            nextMonth = (12 - int.parse(finalMonth)).toString();

                            if (int.parse(nextMonth) < 0) {
                              finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                              finalDate = "${31 + (int.parse(date) - int.parse(DD))}";

                              nextDate = (31 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                            }
                          }
                          if (int.parse(MM) == 2) {
                            if (int.parse(year) % 4 == 0) {
                               finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                              finalDate = "${29 + (int.parse(date) - int.parse(DD))}";
                              // finalYear = "${(int.parse(year) - int.parse(YY)) + 1}";
                              finalMonth = "${12 + (int.parse(month) - int.parse(MM))}";
                              nextDate = (29 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                              if (int.parse(nextMonth) < 0) {
                                finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                                finalDate = "${29 + (int.parse(date) - int.parse(DD))}";

                                nextDate = (29 - int.parse(finalDate)).toString();
                                nextMonth = (12 - int.parse(finalMonth)).toString();
                              }
                            } else {
                               finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                              finalDate = "${28 + (int.parse(date) - int.parse(DD))}";
                              // finalYear = "${(int.parse(year) - int.parse(YY)) + 1}";
                              finalMonth = "${12 + (int.parse(month) - int.parse(MM))}";
                              nextDate = (28 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                              if (int.parse(nextMonth) < 0) {
                                finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                                finalDate = "${28 + (int.parse(date) - int.parse(DD))}";
                                nextDate = (28 - int.parse(finalDate)).toString();
                                nextMonth = (12 - int.parse(finalMonth)).toString();
                              }
                            }
                          }
                          if (int.parse(MM) == 4 ||
                              int.parse(MM) == 6 ||
                              int.parse(MM) == 9 ||
                              int.parse(MM) == 11) {
                            finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                            finalDate = "${30 + (int.parse(date) - int.parse(DD))}";
                            // finalYear = "${(int.parse(year) - int.parse(YY)) + 1}";
                            finalMonth = "${12 + (int.parse(month) - int.parse(MM))}";
                            nextDate = (30 - int.parse(finalDate)).toString();
                            nextMonth = (12 - int.parse(finalMonth)).toString();
                            if (int.parse(nextMonth) < 0) {
                              finalMonth = "${(int.parse(month) - int.parse(MM)) - 1}";
                              finalDate = "${30 + (int.parse(date) - int.parse(DD))}";

                              nextDate = (30 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                            }
                          }
                        } else {
                          finalDate = "${int.parse(date) - int.parse(DD)}";

                          if (int.parse(MM) == 1 ||
                              int.parse(MM) == 3 ||
                              int.parse(MM) == 5 ||
                              int.parse(MM) == 7 ||
                              int.parse(MM) == 8 ||
                              int.parse(MM) == 10 ||
                              int.parse(MM) == 12) {
                            nextDate = (31 - int.parse(finalDate)).toString();
                            nextMonth = (12 - int.parse(finalMonth)).toString();
                          }
                          if (int.parse(MM) == 2) {
                            if (int.parse(YY) % 4 == 0) {
                              nextDate = (29 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                            } else {
                              nextDate = (28 - int.parse(finalDate)).toString();
                              nextMonth = (12 - int.parse(finalMonth)).toString();
                            }
                          }
                          if (int.parse(MM) == 4 ||
                              int.parse(MM) == 6 ||
                              int.parse(MM) == 9 ||
                              int.parse(MM) == 11) {
                            nextDate = (30 - int.parse(finalDate)).toString();
                            nextMonth = (12 - int.parse(finalMonth)).toString();
                          }
                        }
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter Proper Year!"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                        finalDate = "00";
                        finalMonth = "00";
                        finalYear = "00";

                        nextMonth = "00";
                        nextDate = "00";
                      }if (int.parse(MM) == 2 || int.parse(year) % 4 == 0) {
                        if (int.parse(DD) >= 29) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Enter Proper Date!"),
                              backgroundColor: Colors.redAccent,
                            ),
                          );
                          finalDate = "00";
                          finalMonth = "00";
                          finalYear = "00";

                          nextMonth = "00";
                          nextDate = "00";
                        }
                      }
                      if (int.parse(MM) == 4 ||
                          int.parse(MM) == 6 ||
                          int.parse(MM) == 9 ||
                          int.parse(MM) == 11) {
                        if(int.parse(DD) > 30){
                          ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter Proper Date!"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                        finalDate = "00";
                        finalMonth = "00";
                        finalYear = "00";

                        nextMonth = "00";
                        nextDate = "00";
                      } }else {
                        if(int.parse(DD) <= 0 && int.parse(DD) >=12){
                             ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Enter Proper Month!"),
                                  backgroundColor: Colors.redAccent,
                                ),
                              );
                      }}
                    } else {
                      if (YY.length != 4) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter 4 num"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                      } else if (MM.length <= 2) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter 2 num"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter 2 num"),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                      }
                      finalDate = "00";
                      finalMonth = "00";
                      finalYear = "00";

                      nextMonth = "00";
                      nextDate = "00";
                    }
                    month = DateFormat.MMM().format(dateTime);
                  });
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: const Color(0xff13547a),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 184,
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0Xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 10),
            alignment: const Alignment(-0.9, 1),
            child: const Text(
              "Present Age",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\t  $finalYear\nYYYY",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      " $finalMonth\nMM",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      " $finalDate\n DD",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                height: 110,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(
                        colors: [Color(0xff13547a), Color(0xff203a43)])),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 10),
            alignment: const Alignment(-0.9, 1),
            child: const Text(
              "Next Birthday",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      " $nextMonth\nMM",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      "$nextDate\nDD",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                height: 110,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(
                        colors: [Color(0xff6bbed9), Color(0xff006acb)])),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
