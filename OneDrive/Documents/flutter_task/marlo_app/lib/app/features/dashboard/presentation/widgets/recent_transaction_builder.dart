import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
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
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 200,
                    height: 100,
                    child: Center(
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            color: AppColors.cardBackround,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: Center(
                            child: Iconify(
                              MaterialSymbols.arrow_outward_rounded,
                              color: AppColors.klight,
                            ),
                          ),
                        ),
                        title: const Text(
                          "Rent",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("Sat • 16-jul • 9.00 pm"),
                        trailing: const Text(
                          "-\u{0024}850.00",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
