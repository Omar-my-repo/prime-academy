import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddEmployeeScreen extends StatefulWidget {
  static const String routeName = 'addEmployee';

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String? result;
  String dropDownValue = DemoLists.employeesType[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            ScreenTitle('إضافة مسؤول جديد'),
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
                      label: 'الاسم الأول',
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _middleNameController,
                            validator: (value) {},
                            label: 'الاسم الأوسط',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            controller: _lastNameController,
                            validator: (value) {},
                            label: 'الاسم الاخير',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _addressController,
                      textInputType: TextInputType.number,
                      validator: (value) {},
                      label: 'العنوان',
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
                      // hint: 'Enter student phone number',
                      label: 'رقم الهاتف',
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      controller: _userNameController,
                      validator: (value) {},
                      label: 'اسم المستخدم',
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _passwordController,
                      validator: (value) {},

                      label: 'كلمة المرور',
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

                      label: 'تأكيد كلمة المرور',
                      //obscureText: isObscure,
                      // suffixIcon: IconButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         isObscure = !isObscure;
                      //       });
                      //     },
                      //     icon: Icon(Icons.remove_red_eye)),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Text("إختر نوع المستخدم"),
                        SizedBox(width: 10),
                        Expanded(
                          child: DropdownButtonFormField(
                            borderRadius: BorderRadius.circular(14),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.grey),
                              ),
                            ),
                            value: dropDownValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: DemoLists.employeesType
                                .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(
                                      item,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    )))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                dropDownValue = value ?? dropDownValue;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Visibility(
                        visible: dropDownValue != DemoLists.employeesType[0],
                        replacement: SizedBox(height: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('تعيين مهام'),
                            ),
                            SizedBox(height: 30),
                          ],
                        )),

                    // const SizedBox(height: 60),
                    MainButton(
                      onTap: () {
                        // validForm();
                      },
                      text: 'حفظ البيانات',
                    ),
                    const SizedBox(height: 20),
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
