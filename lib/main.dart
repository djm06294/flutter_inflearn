import 'package:flutter/material.dart';
import 'package:toonflix_flutter/widgets/currency_card.dart';
import './widgets/Button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  //얘는 화면에 보여주는 것만 함
  //flutter sdk의 큰 3 코어 위젯
  //중 하나를 상속 받아야함

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Jooyoung',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                    ,
                    const SizedBox(
                      height: 20,
                    ),
                    Text('Total Balance',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.white.withOpacity(0.5), 
                      ),
                    ),
                    const SizedBox(
                      height:8,
                    ),
                    const Text('\$5 194 482',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        color: Colors.white, 
                      ),
                    ),
                    const SizedBox(
                      height:20,
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer', 
                          bgColor: Color(0xFFF1B33B), 
                          textColor: Colors.black,
                        ),
                        SizedBox(
                          width:10,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123), 
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,//바닥에 붙여주기
                      children: [
                        const Text('Wallets',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                          )
                        ),
                        Text('View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 13,
                            fontWeight: FontWeight.w200,
                          )
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 428',
                      icon: Icons.euro_rounded,
                      order: 1,
                    ),
                    const CurrencyCard(
                      name: 'Bitcoin', 
                      code: 'BTC', 
                      amount: '9 785', 
                      icon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      order: 2,
                    ),
                    const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_rounded,
                      order:3,
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}
