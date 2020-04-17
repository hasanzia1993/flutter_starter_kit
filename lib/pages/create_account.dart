import 'package:flutter/material.dart';
import 'package:signup/widgets/TextDivider.dart';
import 'package:signup/widgets/CompanyButton.dart';
import 'package:signup/pages/signup.dart';

class CreateAccount extends StatelessWidget {
  toLoginPage(context) {
    Navigator.pop(context);
  }

  toSignUpPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Container(
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 50,
                  child: CompanyButton(
                    companyName: 'facebook',
                    onPressed: () => toSignUpPage(context),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 50,
                  child: CompanyButton(
                    companyName: 'google',
                    onPressed: () => toSignUpPage(context),
                  ),
                ),
                SizedBox(height: 32),
                TextDivider(),
                SizedBox(height: 32),
                Container(
                  height: 50,
                  child: RaisedButton(
                    colorBrightness: Brightness.light,
                    color: Colors.white,
                    onPressed: () => toSignUpPage(context),
                    child: Text('SIGN UP WITH EMAIL'),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Already Have An Account?'),
                      RawMaterialButton(
                        constraints: BoxConstraints(minWidth: 0),
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        onPressed: () => toLoginPage(context),
                        child: Text(
                          'Log In',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
