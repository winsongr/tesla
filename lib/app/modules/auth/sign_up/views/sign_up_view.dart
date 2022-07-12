import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'package:get/get.dart';
import 'package:tesla/app/modules/widget/custom_button.dart';
import 'package:tesla/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) {
            return SizedBox(
              width: Get.width,
              height: Get.height,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/bg.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: Get.height * 0.15,
                          left: Get.width * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "TESTA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Get.width * 0.1),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                "Smart Car Connected App",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: isKeyboardVisible ? Get.height * 0.3 : 0,
                          child: Container(
                            width: Get.width,
                            height: Get.height * 0.6,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            padding: EdgeInsets.all(Get.width * 0.05),
                            child: Column(
                              children: [
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: Get.width * 0.06,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 10),
                                      labelText: 'Email',
                                      hintText: "abc@food.com",
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 10),
                                      labelText: 'Password',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Button(
                                    color: const Color(0xff00CB2C),
                                    onTap: () {},
                                    text: "",
                                    child: const Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("or"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Button(
                                        text: 'Google',
                                        onTap: () {},
                                        border:
                                            Border.all(color: Colors.black26),
                                        child: Image.asset('assets/google.png',
                                            width: Get.width * 0.06),
                                      ),
                                      Button(
                                        text: 'Facebook',
                                        onTap: () {},
                                        color: const Color(0xff1877F2),
                                        textcolor: Colors.white,
                                        border:
                                            Border.all(color: Colors.black26),
                                        child: Image.asset('assets/fb.png',
                                            width: Get.width * 0.06),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.SIGN_IN);
                                  },
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Already a member,  ',
                                      style: TextStyle(color: Colors.black45),
                                      children: [
                                        TextSpan(
                                          text: 'Sign in',
                                          style: TextStyle(
                                            color: Colors.green,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
