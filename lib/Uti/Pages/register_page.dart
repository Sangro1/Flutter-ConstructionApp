
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  UnfocusDisposition disposition = UnfocusDisposition.scope;
  String email = '', pass = '';
  String isValid = '';
  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      // keyboard dismissed
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Container(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        key: _fromKey,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              email = value;
                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Username",
                            ),
                            validator: (input) {
                              if (input!.isEmpty) {
                                return "This filled cannot be empty";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                pass = value;
                              },
                              obscureText: _isObsecure,
                              decoration: InputDecoration(
                                  hintText: "Enter password ",
                                  labelText: "Password",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObsecure
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObsecure = !_isObsecure;
                                      });
                                    },
                                  )),
                              validator: (input) {
                                if (input!.isEmpty) {
                                  return "Field can not be empty";
                                } else if (input.length < 6) {
                                  return "Password length should be atleast six";
                                }
                              }
                              ),
                          SizedBox(height: 20),
                          Container(
                            height: 40,
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              shadowColor: Colors.greenAccent,
                              color: Colors.black,
                              elevation: 7,
                              child: GestureDetector(
                                onTap: () async {
                                  // try {
                                  //   await FirebaseAuth.instance
                                  //           .createUserWithEmailAndPassword(
                                  //     email: email,
                                  //     password: pass,
                                  //   );
                                  //   Navigator.pushNamed(
                                  //       context, );
                                  // } //Exception
                                },
                                child: const Center(
                                  child: Text(
                                    'SIGNUP',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(top: 15, left: 20),
                            child: InkWell(
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    decoration: TextDecoration.underline),
                              ),
                              //Page navigation
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, MyRoutes.loginRoute);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // CircularProgressIndicator().centered().py16(),
          ],
        ),
      ),
    );
  }
}