import 'package:flutter/material.dart';
import 'package:prime_academy/screens/home/home_screen.dart';
import 'package:prime_academy/shared/widgets/custom_text_field.dart';
import 'package:prime_academy/shared/widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController _userNameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
bool isObscure = true;
final _formKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: const Color(0xffF0F0F2),
                ),
                const Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Text('Your Email', style: TextStyle(color: Colors.black54)),
                    SizedBox(height: 4),
                    CustomTextField(
                      controller: _userNameController,
                      hint: 'Enter User Name',
                      validator: (value) {},
                    ),
                    const SizedBox(height: 30),
                    Text('Password', style: TextStyle(color: Colors.black54)),
                    SizedBox(height: 4),
                    CustomTextField(
                      controller: _passwordController,
                      hint: 'Enter Your Password',
                      obscureText: isObscure,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() => isObscure = !isObscure);
                        },
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      validator: (value) {},
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                        width: double.infinity,
                        child: MainButton(
                            text: 'Login',
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.routeName);
                            })),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Don\'t have an account? ',
                            style: TextStyle(color: Colors.black54)),
                        InkWell(
                          child: Text(
                            'Contact',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
