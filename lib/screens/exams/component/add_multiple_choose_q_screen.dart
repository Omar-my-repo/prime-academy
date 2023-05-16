import 'package:flutter/material.dart';
import 'package:prime_academy/model/questions.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';

class AddMultipleChooseQScreen extends StatefulWidget {
  const AddMultipleChooseQScreen({Key? key}) : super(key: key);

  @override
  State<AddMultipleChooseQScreen> createState() =>
      _AddMultipleChooseQScreenState();
}

class _AddMultipleChooseQScreenState extends State<AddMultipleChooseQScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _answer1Controller = TextEditingController();
  TextEditingController _answer2Controller = TextEditingController();
  TextEditingController _answer3Controller = TextEditingController();
  TextEditingController _answer4Controller = TextEditingController();
  String answer1 = '';
  String answer2 = '';
  String answer3 = '';
  String answer4 = '';
  String? modelAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('True Or False Question')),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add title',
                maxLines: 3,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              CustomTextField(
                controller: _titleController,
                hint: 'question title here',
                maxLines: 3,
                validator: (value) {},
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: _answer1Controller,
                      hint: 'First Choose',
                      onChange: (value) {
                        setState(() {
                          answer1 = value;
                        });
                      },
                      validator: (value) {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      controller: _answer2Controller,
                      hint: 'Second Choose',
                      onChange: (value) {
                        setState(() {
                          answer2 = value;
                        });
                      },
                      validator: (value) {},
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: _answer3Controller,
                      hint: 'Third Choose',
                      onChange: (value) {
                        setState(() {
                          answer3 = value;
                        });
                      },
                      validator: (value) {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextField(
                      controller: _answer4Controller,
                      hint: 'Fourth Choose',
                      onChange: (value) {
                        setState(() {
                          answer4 = value;
                        });
                      },
                      validator: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text('Model Answer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(_answer1Controller.text),
                      value: answer1,
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          if (value!.isNotEmpty) modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RadioListTile(
                      title: Text(_answer2Controller.text),
                      value: answer2,
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          if (value!.isNotEmpty) modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(_answer3Controller.text),
                      value: answer3,
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          if (value!.isNotEmpty) modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RadioListTile(
                      title: Text(_answer4Controller.text),
                      value: answer4,
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          if (value!.isNotEmpty) modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: MainButton(
                  text: 'Save Question',
                  onTap: () {
                    //should check first  if _cotrollers are validate (has data)
                    print('==========$modelAnswer*A');
                    if (modelAnswer != null && modelAnswer!.isNotEmpty) {
                      questions.add(ChooseTheCorrectQuestion(
                          title: _titleController.text,
                          answer1: _answer1Controller.text,
                          answer2: _answer2Controller.text,
                          answer3: _answer3Controller.text,
                          answer4: _answer4Controller.text,
                          modelAnswer: modelAnswer!));
                      Navigator.pop(context);
                    } else {
                      //show alert that model answer not selected message
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
