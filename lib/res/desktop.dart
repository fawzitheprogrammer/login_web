import 'package:flutter/material.dart';
import 'package:login_web/constants/button_style.dart';
import 'package:login_web/constants/colors.dart';
import 'package:login_web/constants/input_style.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(62.0),
                child: Image.asset(
                  'images/img.png',
                  height: 50,
                  width: 50,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 250, 11, 83),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(120, 60),
                        ),
                      ),
                      child: Text(
                        'Register',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Spacer(),
                Text(
                  'Hello, Welcome back !',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Login with your data that you entered duing registration',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black87),
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Material(
                        elevation: 5,
                        shadowColor: Colors.black45,
                        child: TextField(
                          decoration: inputStyle,
                          cursorColor: AppColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Password',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Material(
                        elevation: 5,
                        shadowColor: Colors.black45,
                        child: TextField(
                          decoration: inputStyle,
                          cursorColor: AppColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: Text(
                          'Register',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
