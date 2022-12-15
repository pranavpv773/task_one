import 'package:flutter/material.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/body.dart';
import 'widgets/floating.dart';

class ContractScreenOne extends StatelessWidget {
  const ContractScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<ContractBlocBloc>().roleCntrl.text =
    //     BlocProvider.of<ContractBlocBloc>(context).roles[0];
    return const Scaffold(
      //appbar//

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),

      //body//

      body: Body(),

      //floating//

      floatingActionButton: FloatingButtonWIdget(),
    );
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
