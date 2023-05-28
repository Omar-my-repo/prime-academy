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
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'المدفوعات',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'غير مدفوع',
                icon: Icon(Icons.close_outlined),
              ),
              Tab(
                text: 'مدفوع',
                icon: Icon(Icons.check),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          UnPaidScreen(),
          PaidScreen(),
        ]),
      ),
    );
  }
}
