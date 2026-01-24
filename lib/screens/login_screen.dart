import 'package:flutter/material.dart';
import 'package:future_wifi_code/bottom_bar.dart';

import '../adjust_size.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;
  bool rememberMe = false;
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: Sizes.heights(context) * 0.01),
              Row(
                children: [
                  Icon(Icons.wifi, size: 35, color: Colors.lightGreenAccent),
                  SizedBox(width: Sizes.widths(context) * 0.02),
                  Text(
                    "Future WiFi",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.heights(context) * 0.01),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: Sizes.heights(context) * 0.03),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => setState(() => isLogin = true),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    isLogin
                                        ? Colors.lightGreenAccent
                                        : Colors.grey[800],
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 13,
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isLogin ? Colors.black : Colors.white,
                                ),
                              ),
                              // Text(
                              //   'Login',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: 20,
                              //     color: isLogin ? Colors.black : Colors.white,
                              //   ),
                              // ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => setState(() => isLogin = false),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    !isLogin
                                        ? Colors.lightGreenAccent
                                        : Colors.grey[800],
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(10),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 13,
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isLogin ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      if (isLogin) _buildLoginForm() else _buildSignUpForm(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email or Phone Number',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email or Phone Number",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          maxLength: 25,
        ),
        SizedBox(height: Sizes.heights(context) * 0.002),
        Text(
          "We'll send a verification code if using phone",
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Colors.grey),
        ),
        SizedBox(height: Sizes.heights(context) * 0.013),
        Text(
          'Password',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.008),
        TextFormField(
          maxLength: 25,
          obscureText: isPasswordHidden,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordHidden ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
            ),
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.002),
        Text(
          "Password should be at least 8 characters",
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: Colors.grey),
        ),
        SizedBox(height: Sizes.heights(context) * 0.015),
        Text(
          'Admin PIN (Optional)',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.008),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Enter admin PIN for quick access",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.002),
        Text(
          'Only required for administrative access',
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: Colors.grey),
        ),
        SizedBox(height: Sizes.heights(context) * 0.015),
        Row(
          children: [
            Checkbox(
              checkColor: Colors.lightGreenAccent,
              value: rememberMe,
              onChanged: (value) => setState(() => rememberMe = value!),
              fillColor: WidgetStateProperty.resolveWith(
                (states) => Colors.grey[800],
              ),
            ),
            Text(
              'Remember me',
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Sizes.heights(context) * 0.08,
              width: Sizes.widths(context) * 0.8,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomBar()),
                  );
                },
                child: Card(
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      "Login",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Divider(thickness: 3.5, color: Colors.grey[800]),
                width: Sizes.widths(context) * 0.21,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or continue with',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                child: Divider(thickness: 3.5, color: Colors.grey[800]),
                width: Sizes.widths(context) * 0.21,
              ),
            ],
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Center(
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Container(
                            width: Sizes.widths(context) * 0.09,
                            child: Image.asset("assets/google logo.png"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Text(
                          "Google",
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Row(
                    children: [
                      SizedBox(width: Sizes.widths(context) * 0.015),
                      ClipRRect(
                        child: Container(
                          width: Sizes.widths(context) * 0.08,
                          child: Image.asset("assets/apple logo.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: Sizes.widths(context) * 0.015),
                      Text(
                        "Apple",
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Row(
                    children: [
                      SizedBox(width: Sizes.widths(context) * 0.005),
                      ClipRRect(
                        child: Container(
                          width: Sizes.widths(context) * 0.07,
                          child: Image.asset("assets/Facebook_Logo_2023.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: Sizes.widths(context) * 0.005),
                      Text(
                        "Facebook",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.heights(context) * 0.013),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Don't have an account? ",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => setState(() => isLogin = false),
                child: Text(
                  'Sign up',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back to Welcome Screen',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.lightGreenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email or Phone Number',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email or Phone Number",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          maxLength: 25,
        ),
        SizedBox(height: Sizes.heights(context) * 0.002),
        Text(
          "We'll send a verification code if using phone",
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Colors.grey),
        ),
        SizedBox(height: Sizes.heights(context) * 0.013),
        Text(
          'Password',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.008),
        TextFormField(
          maxLength: 25,
          obscureText: isPasswordHidden,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordHidden ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
            ),
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.002),
        Text(
          "Password should be at least 8 characters",
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: Colors.grey),
        ),
        SizedBox(height: Sizes.heights(context) * 0.013),
        Text(
          'Confirm Password',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Sizes.heights(context) * 0.004),
        TextFormField(
          maxLength: 25,
          obscureText: isPasswordHidden,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters long';
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "Confirm Password",
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordHidden ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  isPasswordHidden = !isPasswordHidden;
                });
              },
            ),
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Sizes.heights(context) * 0.08,
              width: Sizes.widths(context) * 0.8,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomBar()),
                  );
                },
                child: Card(
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Divider(thickness: 3.5, color: Colors.grey[800]),
                width: Sizes.widths(context) * 0.21,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or continue with',
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                child: Divider(thickness: 3.5, color: Colors.grey[800]),
                width: Sizes.widths(context) * 0.21,
              ),
            ],
          ),
        ),
        SizedBox(height: Sizes.heights(context) * 0.005),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Center(
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Container(
                            width: Sizes.widths(context) * 0.09,
                            child: Image.asset("assets/google logo.png"),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        Text(
                          "Google",
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Row(
                    children: [
                      SizedBox(width: Sizes.widths(context) * 0.015),
                      ClipRRect(
                        child: Container(
                          width: Sizes.widths(context) * 0.08,
                          child: Image.asset("assets/apple logo.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: Sizes.widths(context) * 0.015),
                      Text(
                        "Apple",
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Sizes.heights(context) * 0.075,
              width: Sizes.widths(context) * 0.28,
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.grey[800],
                  child: Row(
                    children: [
                      SizedBox(width: Sizes.widths(context) * 0.005),
                      ClipRRect(
                        child: Container(
                          width: Sizes.widths(context) * 0.07,
                          child: Image.asset("assets/Facebook_Logo_2023.png"),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SizedBox(width: Sizes.widths(context) * 0.005),
                      Text(
                        "Facebook",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.heights(context) * 0.013),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Already have an account? ',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () => setState(() => isLogin = true),
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Back to Welcome Screen',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.lightGreenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
