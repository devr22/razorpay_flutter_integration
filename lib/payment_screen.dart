import 'package:flutter/material.dart';
import 'package:razorpay_integration/razorpay_service.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final razorpayService = RazorpayService();

    return Scaffold(
      appBar: AppBar(title: const Text('Razorpay Integration')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            razorpayService.openCheckout(context);
          },
          child: const Text('Make Payment'),
        ),
      ),
    );
  }
}
