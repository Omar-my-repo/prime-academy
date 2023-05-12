import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddTeacherScreen extends StatefulWidget {
  const AddTeacherScreen({Key? key}) : super(key: key);
  static const String routeName = 'addTeacherScreen';

  @override
  State<AddTeacherScreen> createState() => _AddTeacherScreenState();
}

class _AddTeacherScreenState extends State<AddTeacherScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ScreenTitle('Add New Teacher'),
            const SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _firstNameController,
                      validator: (value) {},
                      hint: 'Enter Teacher First Name',
                      label: 'First Name',
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _middleNameController,
                            validator: (value) {},
                            hint: 'Enter Teacher Middle Name',
                            label: 'Middle Name',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            controller: _lastNameController,
                            validator: (value) {},
                            hint: 'Enter Teacher Last Name',
                            label: 'Last Name',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _addressController,
                      textInputType: TextInputType.number,
                      validator: (value) {},
                      hint: 'Enter Teacher Address',
                      label: 'Address',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _phoneController,
                      textInputType: TextInputType.number,
                      validator: (value) {
                        // if (value!.isEmpty || value.length != 11) {
                        //   // return AppLocalizations.of(context)!
                        //   //     .enter_valid_phone_number;
                        // }
                        // return null;
                      },
                      hint: 'Enter Teacher phone number',
                      label: 'Phone',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _userNameController,
                      enabled: false,
                      validator: (value) {},
                      hint: 'Enter Teacher user name',
                      label: 'User Name',
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _passwordController,
                      enabled: false,
                      validator: (value) {},
                      hint: 'Enter Teacher Password',
                      label: 'Password',
                      //obscureText: isObscure,
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         isObscure = !isObscure;
                      //       });
                      //     },
                      //     icon: Icon(Icons.remove_red_eye)),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: _confirmPasswordController,
                      enabled: false,

                      validator: (value) {},
                      hint: 'Confirm Teacher Password',
                      label: 'Confirm Password',
                      //obscureText: isObscure,
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         isObscure = !isObscure;
                      //       });
                      //     },
                      //     icon: Icon(Icons.remove_red_eye)),
                    ),
                    const SizedBox(height: 10),
                    Divider(thickness: 1),
                    const SizedBox(height: 10),
                    Text(
                      'Choose Teatcher Level',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 250,
                      color: Colors.grey[200],
                      child: ListView.builder(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                        itemCount: DemoLists.levels.length,
                        itemBuilder: (_, int index) {
                          return Card(
                            color: Colors.white,
                            elevation: 4.0,
                            child: CheckboxListTile(
                              title: Text(DemoLists.levels[index]),
                              //subtitle: Text(this.noteList[position].actn_on),
                              value: DemoLists.selectedLevels.contains(index),
                              onChanged: (_) {
                                if (DemoLists.selectedLevels.contains(index)) {
                                  DemoLists.selectedLevels
                                      .remove(index); // unselect
                                } else {
                                  DemoLists.selectedLevels.add(index); // select
                                }
                                setState(() {});
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    MainButton(
                      onTap: () {
                        // validForm();
                      },
                      text: 'Create Account',
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
