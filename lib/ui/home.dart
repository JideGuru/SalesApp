import 'package:flutter/material.dart';
import 'package:sales_app_ui/widget/payment_methods.dart';
import 'package:sales_app_ui/widget/spending.dart';

class Home extends StatefulWidget {
  final String header;

  Home({Key key, this.header}) : super(key: key);
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.5, 0.9],
                      colors: [
                        Colors.green,
                        Colors.greenAccent,
//                        Colors.blue[400],
//                        Colors.blue[300],
                      ],
                      // stops: [0.0, 0.1],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .45,
                  padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("07 April 2017 to 07 April 2019",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Total Sale",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        r"$15,990.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  color: Colors.grey[100],
                ),
              ],
            ),

            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .31,
                  right: 10.0,
                  left: 10.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView(
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.5),
                  ),
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Spendings(
                        name: "Cash",
                        amount: r"$1000.22",
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Spendings(
                        name: "Cash",
                        amount: r"$450.28",
                      ),
                    ),



                  ],
                ),
              ),
            ),

            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .50,
                  right: 10.0,
                  left: 10.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  primary: false,
                  children: <Widget>[

                    PaymentMethods(
                      name: "Cash",
                      amount: r"$1000.22",
                    ),

                    PaymentMethods(
                      name: "Cash",
                      amount: r"$450.28",
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
