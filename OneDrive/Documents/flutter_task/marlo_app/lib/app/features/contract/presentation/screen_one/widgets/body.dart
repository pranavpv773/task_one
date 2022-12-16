import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

import 'rect_avathar_container.dart';
import 'row_title_widget.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContractBloc, ContractState>(
      builder: (context, state) {
        return state.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(children: [
                  const RowTitleWidgets(
                    title: "All People • 2",
                  ),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        //  final datas = context.read<ContractBlocBloc>().;
                        return ListTile(
                          leading: RectContainer(
                            title: "PV",
                            color: AppColors.peopleAvathar,
                          ),
                          title: const Text("Pranav"),
                          subtitle: const Text("Inactive"),
                          trailing: const Text("Admin"),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<ContractBloc, ContractState>(
                          builder: (context, state) {
                            return const Text("Invited People •3");
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
                  ),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: AppColors.inviteAvathar,
                            ),
                            child: const Center(
                              child: Text("VP"),
                            ),
                          ),
                          title: const Text("Pranav"),
                          subtitle: const Text("PV"),
                        );
                      },
                    ),
                  ),
                ]),
              );
      },
    );
  }
}
