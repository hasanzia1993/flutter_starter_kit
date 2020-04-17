import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  toPage(context, {pageName}) {
    Navigator.pushNamed(context, '/$pageName');
  }

  logout(context) =>
      Navigator.pushNamedAndRemoveUntil(context, '/', ModalRoute.withName('/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 8),
                  ListTile(
                    isThreeLine: true,
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal[100],
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://cdn4.iconfinder.com/data/icons/e-commerce-181/512/477_profile__avatar__man_-512.png',
                      ),
                    ),
                    title: Text(
                      'Ahmed Apps',
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '+1 204 590 7230',
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'sales@ahmedapps.ca',
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  ListTile(
                    onTap: () => null,
                    leading: Icon(Icons.edit),
                    title: Text('Edit Account'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () => null,
                    leading: Icon(Icons.lock),
                    title: Text('Change Password'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () => null,
                    leading: Icon(Icons.location_on),
                    title: Text('Saved Addresses'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () => null,
                    leading: Icon(Icons.credit_card),
                    title: Text('Saved Cards'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () => logout(context),
                    leading: Icon(Icons.power_settings_new),
                    title: Text('Logout'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
