import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String? name;
  Player(this.name);
}

void main() {
  // var player = Player('seung');
  // print(player.name);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withAlpha(150),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withAlpha(150),
                    fontSize: 35,
                  ),
                ),
                Text(
                  '\$ 5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      text: 'Transfer',
                      backgroundColor: Color(0xfff2b33a),
                      textColor: Colors.black,
                    ),
                    MyButton(
                      text: 'Request',
                      backgroundColor: Color(0xff1f2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white.withAlpha(150),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                  name: 'Euro',
                  amount: '6 428',
                  code: 'EUR',
                  icon: Icons.euro_rounded,
                  order: 1,
                ),
                CurrencyCard(
                  name: 'Dollar',
                  amount: '55 522',
                  code: 'USD',
                  icon: Icons.attach_money_rounded,
                  order: 2,
                ),
                CurrencyCard(
                  name: 'Bitcoin',
                  amount: '9 785',
                  code: 'BTC',
                  icon: Icons.currency_bitcoin_rounded,
                  order: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
