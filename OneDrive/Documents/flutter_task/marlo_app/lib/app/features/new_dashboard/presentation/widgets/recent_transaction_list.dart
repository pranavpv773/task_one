import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/dashboard/presentation/widgets/transaction_card.dart';

class RecentTransactionList extends StatelessWidget {
  const RecentTransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
            child: TransactionCard(),
          );
        },
      ),
    );
  }
}
