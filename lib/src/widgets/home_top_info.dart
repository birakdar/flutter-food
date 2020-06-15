import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTopInfo extends StatelessWidget {
  _launchURL() async {
    const url = 'https://api.whatsapp.com/send?phone=+905352646729';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("What would", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              Text("you like to eat ?", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
            ],
          ),
          IconButton(
            onPressed: _launchURL,
            icon: Icon(Icons.notifications_none, size: 30.0 ,color: Theme.of(context).primaryColor,),
          ),
        ],
      ),
    );
  }
}