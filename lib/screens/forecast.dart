import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forecast extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 348,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 33, 0),
                          child: SizedBox(
                            width: 187,
                            child: Text(
                              'Forecast',
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
                ),
              ),
              SizedBox(height: 5),
              CircleAvatar(
                radius: 45.5,
                backgroundImage: AssetImage('assets/images/user_2.png'),
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Color(0xFF000000),
                  ),
                  children: [
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
              SizedBox(height: 43),
              buildButton(context, 'Home'),
              buildButton(context, 'Collaborate'),
              buildButton(context, 'Forecast'),
              buildButton(context, 'Flood Preparation'),
              buildButton(context, 'Settings'),
              buildButton(context, 'Logout'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF5967E3),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 2.5,
            ),
          ],
        ),
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
