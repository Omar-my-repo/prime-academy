import 'package:flutter/material.dart';
import 'package:prime_academy/model/demo_lists.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({Key? key}) : super(key: key);
  static const String routeName = 'addStudentScreen';

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

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
String dropDownValue = DemoLists.levels[0];
List<String> parentsName = DemoLists.parentsName;

class _AddStudentScreenState extends State<AddStudentScreen> {
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
            ScreenTitle('Add New Student'),
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
                      hint: 'Enter Student First Name',
                      label: 'First Name',
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: _middleNameController,
                            validator: (value) {},
                            hint: 'Enter Student Middle Name',
                            label: 'Middle Name',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            controller: _lastNameController,
                            validator: (value) {},
                            hint: 'Enter Student Last Name',
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
                      hint: 'Enter student Address',
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
                      hint: 'Enter student phone number',
                      label: 'Phone',
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      controller: _userNameController,
                      validator: (value) {},
                      hint: 'Enter student user name',
                      label: 'User Name',
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: _passwordController,
                      validator: (value) {},
                      hint: 'Enter Student Password',
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
                      hint: 'Confirm Student Password',
                      label: 'confirm password',
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
                    InkWell(
                      onTap: () async {
                        showSearch(
                                context: context,
                                delegate: DataSearch(parentsName: parentsName))
                            .then((value) {
                          setState(() {
                            result = value;
                          });
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 14),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black54),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                    result == null || result!.isEmpty
                                        ? 'Add Parent'
                                        : 'Parent: $result',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                              ),
                              Icon(Icons.search)
                            ],
                          )),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Choose student Level"),
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
                            items: DemoLists.levels
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

class DataSearch extends SearchDelegate<String> {
  List<String> parentsName;

  DataSearch({required this.parentsName});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var searchList = query.isEmpty
        ? parentsName
        : parentsName.where((element) => element.startsWith(query)).toList();
    //for searching by name or phone
    //ممكن نجيب ليسته من الاسماء لوحديها ال هيا فوق
    //وبرضو نجيب ليسته م الارقام ال بدايتها الكويري زي ال فوق
    // وتحت عند الايتم كونت مثلا
    //او عند عرض الداتا
    //itemCount:namesList.isNotEmpty?namesList.length:phoneList.length
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(
              searchList[index],
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              close(context, searchList[index]);
            },
          );
        },
      ),
    );
  }
}
