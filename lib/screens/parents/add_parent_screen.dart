import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';

class AddParentScreen extends StatefulWidget {
  static const String routeName = 'addParentScreen';

  @override
  State<AddParentScreen> createState() => _AddParentScreenState();
}

class _AddParentScreenState extends State<AddParentScreen> {
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
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Add New Parent',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
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
                      hint: 'Enter Parent First Name',
                      label: 'First Name',
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _middleNameController,
                            validator: (value) {},
                            hint: 'Enter Parent Middle Name',
                            label: 'Middle Name',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            controller: _lastNameController,
                            validator: (value) {},
                            hint: 'Enter Parent Last Name',
                            label: 'Last Name',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _addressController,
                      textInputType: TextInputType.number,
                      validator: (value) {},
                      hint: 'Enter Parent Address',
                      label: 'Address',
                    ),
                    const SizedBox(height: 16),
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
                      hint: 'Enter Parent phone number',
                      label: 'Phone',
                    ),
                    SizedBox(height: 14),
                    CustomTextField(
                      controller: _userNameController,
                      validator: (value) {},
                      hint: 'Enter Parent user name',
                      label: 'User Name',
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _passwordController,
                      validator: (value) {},
                      hint: 'Enter Parent Password',
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
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _confirmPasswordController,
                      validator: (value) {},
                      hint: 'Confirm Parent Password',
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
                    const SizedBox(height: 60),
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
