import 'package:flutter/material.dart';
import 'package:prime_academy/model/questions.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';

class AddTrueFalseQScreen extends StatefulWidget {
  const AddTrueFalseQScreen({Key? key}) : super(key: key);

  @override
  State<AddTrueFalseQScreen> createState() => _AddTrueFalseQScreenState();
}

class _AddTrueFalseQScreenState extends State<AddTrueFalseQScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _degreeController = TextEditingController();
  String? modelAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صواب ام خطأ'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 20),
              // ScreenTitle('Add True Or False Question'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'رأس السؤال',
                    maxLines: 3,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text('الدرجة'),
                      SizedBox(width: 6),
                      SizedBox(
                        width: 80,
                        child: TextFormField(
                          controller: _degreeController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {},
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _titleController,
                hint: 'اض السؤال هنا',
                maxLines: 3,
                validator: (value) {},
              ),
              SizedBox(height: 40),
              Text('الاجابة الصحيحة',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text('صواب'),
                      value: 'True',
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: RadioListTile(
                      title: Text('خطأ'),
                      value: 'False',
                      groupValue: modelAnswer,
                      onChanged: (value) {
                        setState(() {
                          modelAnswer = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: MainButton(
                  text: 'إضافة السؤال',
                  onTap: () {
                    //should check first  if _cotrollers are validate (has data)
                    print('==========$modelAnswer*A');
                    if (modelAnswer != null && modelAnswer!.isNotEmpty) {
                      questions.add(TrueOrFalseQuestion(
                          title: _titleController.text,
                          degree: int.parse(_degreeController.text),
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
