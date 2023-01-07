import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../login_page/view/login_page.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          backgroundRegister(size),
          Positioned(
            bottom: 0,
            child: buttonRegister(size),
          ),
          backgroundWhite(size, context),
        ],
      ),
    );
  }

  Positioned backgroundWhite(Size size, BuildContext context) {
    return Positioned(
      bottom: 60,
      child: Container(
          width: size.width,
          height: 630,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft:  Radius.circular(20),
                  topRight: Radius.circular(20)
              )
          ),
          child: body(context)
      ),
    );
  }

  Padding body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text('Register', style: TextStyle(fontSize: 24)),
          const SizedBox(height: 10),
          const Text('Create your account', style: TextStyle(color: Colors.grey, fontSize: 16)),
          const SizedBox(height: 60),
          inputName(),
          const SizedBox(height: 30),
          inputEmail(),
          const SizedBox(height: 30),
          inputPass(),
          const SizedBox(height: 50),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )
                );
              },
              splashColor : Colors.transparent,
              highlightColor: Colors.grey.withOpacity(0.6),
              child: Ink(
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: const Text('I have an account', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column inputName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'YOUR NAME',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              hintText: 'YOUR NAME',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column inputPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PASSWORD',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            style: const TextStyle(fontSize: 14),
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Image.asset(Assets.icons.eye.keyName, width: 14,),
              hintText: 'PASSWORD',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Column inputEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'YOUR EMAIL',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TextField(
            style: const TextStyle(fontSize: 14),
            decoration: InputDecoration(
              hintText: 'YOUR EMAIL',
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Material buttonRegister(Size size) {
    return Material(
      color: const Color(0xFF19A54A),
      child: InkWell(
        onTap: () {

        },
        splashColor: Colors.transparent,
        highlightColor: Colors.grey.withOpacity(0.6),
        child: Ink(
          child: Container(
            alignment: Alignment.center,
            width: size.width,
            height: 60,
            child: const Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }

  SizedBox backgroundRegister(Size size) {
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Image.asset(Assets.images.background.keyName, fit: BoxFit.fill,)
    );
  }
}