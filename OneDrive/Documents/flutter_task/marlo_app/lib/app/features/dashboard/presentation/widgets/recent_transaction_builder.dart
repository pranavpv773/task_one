import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

import 'transaction_card.dart';

class RecentTransactionBuilder extends StatelessWidget {
  const RecentTransactionBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.pink[200],
              ),
              width: 200,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Material(
                  elevation: 1,
                  shadowColor: AppColors.kDark,
                  borderRadius: BorderRadius.circular(10),
                  child: const TransactionCard(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
