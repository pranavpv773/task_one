import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart';

class RowTitleWidgets extends StatelessWidget {
  const RowTitleWidgets({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<ContractBloc, ContractState>(
            builder: (context, state) {
              return Text(title);
            },
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "See all",
            ),
          )
        ],
      ),
    );
  }
}
