import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('06.19'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.notifications_none),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, SOFYAN NOOR ARIEF, S.T, M.KOM'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Your Balance'),
                      Spacer(),
                      Text('Bonus Balance'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Rp 10.184'),
                      Spacer(),
                      Text('0'),
                      Icon(Icons.arrow_forward_ios, size: 12),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add_circle_outline),
                Icon(Icons.send),
                Icon(Icons.qr_code),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.phone_android),
                Icon(Icons.flash_on),
                Icon(Icons.payment),
                Icon(Icons.games),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.tv),
                Icon(Icons.water_damage),
                Icon(Icons.card_membership),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 15),
            Image.network('URL of the promotion image'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}