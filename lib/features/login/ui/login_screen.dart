import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.blue[900]!, Colors.blue[400]!, Colors.blue[200]!],
          ),
        ),
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 40.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 250.0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                child: Container(
                  height: 700.0,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 92, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!),
                                  ),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                      hintText: "كود الموظف ",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]!),
                                  ),
                                ),
                                child: const TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "كلمة السر",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Text(
                          'نسيت كلمة المرور ؟',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 50.0,
                            margin: const EdgeInsets.symmetric(horizontal: 50.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue[900]!,
                            ),
                            child: const Center(
                              child: Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
