// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../classes/language_constants.dart';
import '../model/model.dart';
import 'awards_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).quizPage,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 32),
            Text(
              translation(context).qnum,
              style: GoogleFonts.comicNeue(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '$_questionNumber/${questions.length}',
              style: GoogleFonts.comicNeue(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: questions.length,
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final _question = questions[index];
                  return buildQuestion(_question);
                },
              ),
            ),
            _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          question.text,
          style: GoogleFonts.comicNeue(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(_questionNumber < questions.length
          ? translation(context).nextPage
          : translation(context).seeTheResult),
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );
  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: SingleChildScrollView(
        child: Container(
          height: 100,
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: 290,
                height: 100,
                child: Text(
                  option.text,
                  style: GoogleFonts.comicNeue(
                    fontSize: 16,
                  ),
                ),
              ),
              getIconForOption(option, question)
            ],
          ),
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade800;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          translation(context).resultsPage,
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Text(
              translation(context).youGot,
              style: GoogleFonts.comicNeue(
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '$score/${questions.length}',
              style: GoogleFonts.comicNeue(
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AwardsPage()),
          );
        },
        label: Text(translation(context).rewards),
        icon: const Icon(Icons.card_giftcard),
      ),
    );
  }
}
