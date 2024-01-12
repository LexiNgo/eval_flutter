import 'package:epsi_shop/bo/cart.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  Cart cart;
  //double price =cart.getTotalPriceCart();
  Payment({super.key,required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finalisation de la commande"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
            child: const Row(
              children: [
                Text("Récapitulatif de votre commande",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text("Sous-total")
                  ],
                )
              ],
            ),

    )
        ],
      ),
    );
  }
}
