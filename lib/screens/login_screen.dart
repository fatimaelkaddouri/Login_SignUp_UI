import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_screen.dart';
import '../utils/constants.dart';
import '../widgets/topbar.dart';





class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            TopBar(),
            const SizedBox(height: 40.0),

            Padding(
              padding: EdgeInsets.all(15),
              child:   TextField(
                controller: null,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor:  colorThree,
                  hintStyle: TextStyle( color: Colors.grey),
                  hintText: "Email",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child:   TextField(
                controller: null,
                obscureText: !this.showPassword,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: colorThree,
                  hintStyle: TextStyle( color: Colors.grey),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this.showPassword ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => this.showPassword = !this.showPassword);
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Container(
              width: 181.0,
              height: 57.0,
              child:  ElevatedButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  elevation: 15.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
        const SizedBox(height:20),
            FlatButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignScreen()));
              },
              child: Text(
                'Create an Account',
                style: TextStyle(color: colorTwo, fontSize: 15),
              ),
            ),

          ],

        ),
      ),
    );
  }
}