import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_bank_model_class.dart';
import 'package:quiz_app/question_bank.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List answers = [];
  int i = 1;
  int? ans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: IndexedStack(
              alignment: Alignment.center,
              index: _currentIndex,
              children: questionBank
                  .map(
                    (e) => displayQuestion(e),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: answers
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 2),
                        child: Text(
                          e,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displayQuestion(QuestionBank q) {
    return (q.id <= 10)
        ? Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  q.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  child: const Text(
                    "True",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.4,
                      vertical: 28,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_currentIndex <= 9) {
                        ++_currentIndex;
                        if (q.answer == true) {
                          ans = i++;
                          answers.add("✅");
                        } else {
                          answers.add("❌");
                        }
                      }
                    });
                  }),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  child: const Text(
                    "false",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.389,
                      vertical: 28,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (_currentIndex <= 9) {
                        ++_currentIndex;
                        if (q.answer == false) {
                          ans = i++;
                          answers.add("✅");
                        } else {
                          answers.add("❌");
                        }
                      }
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "Quiz End",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your score is: $ans",
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10)),
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                    answers.clear();
                    i = 1;
                  });
                },
                child: const Text(
                  "Restart",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          );
  }
}