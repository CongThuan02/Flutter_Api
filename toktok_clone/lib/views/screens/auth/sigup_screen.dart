import 'package:flutter/material.dart';
import 'package:toktok_clone/constants.dart';
// ignore: unused_import
import 'package:toktok_clone/controllers/auth_controller.dart';
import 'package:toktok_clone/views/widgets/text_input_fleld.dart';

class SigupScreen extends StatelessWidget {
  SigupScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 120),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "TikTok Clone",
                style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernameController,
                  lableText: 'username',
                  isObscure: false,
                  icon: Icons.person,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  lableText: 'email',
                  isObscure: false,
                  icon: Icons.email,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  lableText: 'Password',
                  isObscure: false,
                  icon: Icons.lock,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  onTap: () => authController.registerUser(
                    _usernameController.text,
                    _emailController.text,
                    _passwordController.text,
                    authController.profilePhoto,
                  ),
                  // ignore: prefer_const_constructors
                  child: Center(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Register",
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(fontSize: 20),
                  ),
                  InkWell(
                    onTap: () => authController.pickImage(),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: buttonColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
