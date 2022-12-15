import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/screen_one.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<ContractBlocBloc, ContractBlocState>(
                builder: (context, state) {
                  return Text(
                      "All People • ${state.teamModel[0].data!.contacts!.length}");
                },
              ),
              TextButton(onPressed: () {}, child: const Text("See all"))
            ],
          ),
        ),
        SizedBox(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                //  final datas = context.read<ContractBlocBloc>().;
                return BlocBuilder<ContractBlocBloc, ContractBlocState>(
                  builder: (context, state) {
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: AppColors.peopleAvathar,
                        ),
                        child: Center(
                          child: Text(
                              "${state.teamModel[0].data!.contacts![index].firstname[0].toString().toCapitalized()} ${state.teamModel[0].data!.contacts![index].lastname[0].toString().toCapitalized()}"),
                        ),
                      ),
                      title: Text(
                          "${state.teamModel[0].data!.contacts![index].firstname.toCapitalized()} ${state.teamModel[0].data!.contacts![index].lastname.toCapitalized()}"),
                      subtitle: Text(
                          state.teamModel[0].data!.contacts![index].isactive ==
                                  true
                              ? "Active"
                              : "Inactive"),
                      trailing: Text(state
                          .teamModel[0].data!.contacts![index].roleName
                          .toString()
                          .substring(5)),
                    );
                  },
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<ContractBlocBloc, ContractBlocState>(
                builder: (context, state) {
                  return Text(
                      "Invited People • ${state.teamModel[0].data!.invites!.length}");
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
                return BlocBuilder<ContractBlocBloc, ContractBlocState>(
                  builder: (context, state) {
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: AppColors.inviteAvathar,
                        ),
                        child: Center(
                          child: Text(state
                              .teamModel[0].data!.invites![index].email![0]
                              .toString()
                              .toUpperCase()),
                        ),
                      ),
                      title: Text(state.teamModel[0].data!.invites![index].email
                          .toString()),
                      subtitle: Text(state
                          .teamModel[0].data!.invites![index].configName
                          .toString()
                          .substring(5)),
                    );
                  },
                );
              }),
        ),
      ]),
    );
  }
}
