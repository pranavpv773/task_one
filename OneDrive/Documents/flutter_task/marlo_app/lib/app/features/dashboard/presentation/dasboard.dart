import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/rect_avathar_container.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

import 'widgets/appbar.dart';
import 'widgets/body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Body(),
    );
  }
}
