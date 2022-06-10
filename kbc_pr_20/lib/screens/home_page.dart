import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc_pr_20/list.dart';
import 'package:kbc_pr_20/screens/last_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = const TextStyle(fontSize: 20, color: Color(0xffa8a8a9));
  Color color = const Color(0xff1e1f23);
  int iA = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: question
            .map(
              (e) => displayQuestion(),
            )
            .toList(),
      ),
    );
  }

  Widget displayQuestion() {
    return (iA == 10)
        ? const LastPage()
        : Column(
            children: [
              Expanded(
                flex: 1,
                child: IndexedStack(
                  index: iA,
                  children: question.map((e) => e.column).toList(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  child: IndexedStack(
                    index: iA,
                    children: question.map((e) => displayAnswer(e)).toList(),
                  ),
                ),
              ),
            ],
          );
  }

  Widget displayAnswer(a) {
    return (iA == 10)
        ? const LastPage()
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: iA,
                        children: question
                            .map(
                              (e) => Text("A. ${e.a}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (iA == 2) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          iA++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: iA,
                        children: question
                            .map(
                              (e) => Text("B. ${e.b}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (iA == 5 || iA == 7 || iA == 8) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          iA++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: iA,
                        children: question
                            .map(
                              (e) => Text("C. ${e.c}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (iA == 4 || iA == 6 || iA == 9) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          iA++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(5)),
                      child: IndexedStack(
                        alignment: Alignment.center,
                        index: iA,
                        children: question
                            .map(
                              (e) => Text("D. ${e.d}", style: style),
                            )
                            .toList(),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        if (iA == 0 || iA == 1 || iA == 3) {
                          Navigator.of(context)
                              .pushNamed("next_page", arguments: a);
                          iA++;
                        } else {
                          Navigator.of(context).pushNamed("wrong");
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          );
  }
}