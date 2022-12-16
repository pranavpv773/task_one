import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/widgets/appbar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
