import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/row_title_widget.dart';
import 'action_section.dart';
import 'horizontal_card.dart';
import 'recent_transaction_builder.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: false,
      children: const [
        HorizontalCardBuilder(),
        ActionSection(),
        RowTitleWidgets(
          title: "Recent Transactions",
        ),
        RecentTransactionBuilder()
      ],
    );
  }
}
