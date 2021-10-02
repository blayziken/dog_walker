import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/widgets/buttons.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  bool showPassword = true;

  String _name = '';
  String _email = '';
  String _password = '';

  Widget _buildNameField() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
          // controller: _nameController,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Fullname',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Fullname is required';
            }

            return null;
          },
          onSaved: (value) {
            _name = value!;
          },
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextFormField(
          // controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'E-mail',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'E-mail is required';
            }

            return null;
          },
          onSaved: (value) {
            _email = value!;
          },
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          // controller: _passwordController,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          obscureText: showPassword,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Password is required';
            }

            return null;
          },
          onSaved: (value) {
            _password = value!;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Container(
            height: media.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Let\'s start here',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Fill in your details to begin',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  key: _formKey,
                  children: [
                    _buildNameField(),
                    SizedBox(height: 25),
                    _buildEmailField(),
                    SizedBox(height: 25),
                    _buildPasswordField(),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: SubmitButton(
                    text: 'Sign up',
                    onPressed: () {
                      print(_name);
                      print(_password);
                      print(_email);
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                Spacer(),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By signing in, I agree with ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\nTerms of Use and Privacy Policy',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
