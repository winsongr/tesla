import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'package:get/get.dart';
import 'package:tesla/app/modules/widget/custom_button.dart';
import 'package:tesla/app/routes/app_pages.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  // final _formKey = GlobalKey<FormState>();
  // bool _validate = false;
  // bool _login = false;
  // bool _loading = false;
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  // final EmailAuthentication _service = EmailAuthentication();

  // _validateEmail() {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       _validate = false;
  //       _loading = true;
  //     });

  //     _service
  //         .getAdminCredential(
  //       context: context,
  //       isLog: _login,
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     )
  //         .then((value) {
  //       setState(() {
  //         _loading = false;
  //       });
  //     });
  //   }
  // }
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
                                  "Sign In",
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
                                SizedBox(
                                  width: 220.0,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.toNamed(Routes.PHONE_AUTH);
                                    },
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.phone_android_outlined,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          'Continue with phone',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.SIGN_UP);
                                  },
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Not yet a member,  ',
                                      style: TextStyle(color: Colors.black45),
                                      children: [
                                        TextSpan(
                                          text: 'Sign up',
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
                                const SizedBox(
                                  height: 20,
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
//  Column(
//           children: [
//             Expanded(
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.white,
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 80.0,
//                     ),
//                     Image.asset(
//                       'images/ecom_app_icon-transparent.png',
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     const Text(
//                       'OLX Clone',
//                       style: TextStyle(
//                         fontSize: 30.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blueAccent,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                   child: Center(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(
//                       width: 220.0,
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(3.0),
//                           ),
//                         ),
//                         onPressed: () {
//                           // Navigator.pushNamed(context, PhoneAuthScreen.id);
//                         },
//                         child: Row(
//                           children: const [
//                             Icon(
//                               Icons.phone_android_outlined,
//                               color: Colors.black,
//                             ),
//                             SizedBox(
//                               width: 8.0,
//                             ),
//                             Text(
//                               'Continue with phone',
//                               style: TextStyle(
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SignInButton(
//                       Buttons.Google,
//                       text: 'Continue with Google',
//                       onPressed: () async {
//                         // User? user =
//                         //     await GoogleAuthentication.signInWithGoogle(context: context);
//                         // if (user != null) {
//                         //   PhoneAuthService _authentication = PhoneAuthService();
//                         //   _authentication.addUser(context, user.uid);
//                         // }
//                       },
//                     ),
//                     SignInButton(
//                       Buttons.FacebookNew,
//                       text: 'Continue with Facebook',
//                       onPressed: () {},
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Text(
//                         'OR',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         // Navigator.pushNamed(context, EmailAuthScreen.id);
//                       },
//                       child: Container(
//                         height: 100,
//                         width: 100,
//                         child: Text(
//                           'Login With Email',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                           ),
//                         ),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 'If you continue, you are accepting\nTerms and Conditions and Privacy Policy',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white, fontSize: 10.0),
//               ),
//             ),
//           ],
//         ),