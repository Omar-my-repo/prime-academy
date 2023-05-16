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
  String? modelAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('True Or False Question')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20),
            // ScreenTitle('Add True Or False Question'),
            SizedBox(height: 20),
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
            SizedBox(height: 40),
            Text('Model Answe',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text('True'),
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
                    title: Text('False'),
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
                text: 'Save Question',
                onTap: () {
                  //should check first  if _cotrollers are validate (has data)
                  print('==========$modelAnswer*A');
                  if (modelAnswer != null && modelAnswer!.isNotEmpty) {
                    questions.add(TrueOrFalseQuestion(
                        title: _titleController.text,
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
    );
  }
}
