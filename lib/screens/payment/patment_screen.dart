import 'package:flutter/material.dart';
import 'package:prime_academy/screens/payment/paid_screen.dart';
import 'package:prime_academy/screens/payment/unpaid_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);
  static const String routeName = 'paymnetScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          surfaceTintColor: Colors.red,
          // shadowColor: Colors.red,

          title: Text(
            'Payments',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Paid',
                icon: Icon(Icons.check),
              ),
              Tab(
                text: 'Unpaid',
                icon: Icon(Icons.close_outlined),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          PaidScreen(),
          UnPaidScreen(),
        ]),
      ),
    );
  }
}