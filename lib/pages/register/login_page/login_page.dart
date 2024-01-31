import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/controller/users_controller.dart';
import 'package:instagram/widgets/MyButtomNaw.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final vmctr = UserController();
  @override
  void initState() {
    vmctr.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: vmctr.isLoadig,
          builder: (context, isLoadig, child) {
            return vmctr.isLoadig.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 8,
                    ),
                  )
                : SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/logo.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.26,
                              ),
                            ),
                            //! Email
                            TextField(
                              controller: vmctr.emailComtroller,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFD9D9D9),
                                hintText: 'Enter email address',
                                hintStyle:
                                    const TextStyle(color: Colors.black26),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            //! Password
                            TextField(
                              controller: vmctr.passwordComtroller,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFD9D9D9),
                                hintText: 'Password',
                                counterText: 'Forget password?',
                                counterStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintStyle:
                                    const TextStyle(color: Colors.black26),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 38),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: double.infinity,
                                child: InkWell(
                                  onTap: () {
                                    //var email = vmctr.emailComtroller;
                                    // var password = vmctr.emailComtroller;
                                    bool a = false;
                                    for (var element in vmctr.users) {
                                      if (element.email ==
                                              vmctr.emailComtroller.text &&
                                          element.password ==
                                              vmctr.passwordComtroller.text) {
                                        a = true;
                                      }
                                    }
                                    if (a) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (contex) =>
                                              const MyBottomNaw(),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              "Bunday email va password serverda mavjud emas"),
                                        ),
                                      );
                                    }
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF150098),
                                          Color(0xFFFF3D00),
                                        ],
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Stack(
                              children: [
                                Divider(
                                  endIndent: 200,
                                ),
                                Align(child: Text('OR')),
                                Divider(
                                  indent: 200,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height *
                                      0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/metalogo.svg',
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'login with meta',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
          }),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have an account? ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            'Sign up',
            style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
