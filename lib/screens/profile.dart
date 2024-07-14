import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.934, -0.406),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xFFCFE9EE), Color(0x00CFE9EE)],
            stops: <double>[0, 1],
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                buildTitle(),
                buildProfilePicture(),
                buildGreeting(),
                buildTextField(context, 'Change Username'),
                buildTextField(context, 'Change Password'),
                buildTextField(context, 'Change Email'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 32),
      child: Align(
        alignment: Alignment.topRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 33, 0),
              child: SizedBox(
                width: 187,
                child: Text(
                  'User Profile Change',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF7AA9D3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 4,
                  ),
                  child: Text(
                    'Fludert',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'v.1.0',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xFF000000),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfilePicture() {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/user_2.png'),
        ),
      ),
      width: 185,
      height: 185,
    );
  }

  Widget buildGreeting() {
    return Container(
      margin: EdgeInsets.only(bottom: 45),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Color(0xFF000000),
          ),
          children: [
            TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 23,
                height: 1.3,
              ),
            ),
            TextSpan(
              text: 'John Doe',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 15,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, String labelText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontFamily: 'Rasa',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0x7D000000),
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(15),
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
        ),
      ],
    );
  }
}
