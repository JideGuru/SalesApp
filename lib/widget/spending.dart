import 'package:flutter/material.dart';

class Spendings extends StatelessWidget {

  final String name;
  final String amount;
  Spendings({
    Key key,
    @required this.name,
    @required this.amount,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0)),
      elevation: 4.0,
      child: InkWell(
        onTap: () => print("tapped"),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 15.0, bottom: 0.0, right: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Column(
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[400],
                          ),
                        ),

                        SizedBox(height: 10.0),
                        Text("$amount",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
