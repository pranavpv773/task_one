import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marlo_app/app/utils/app_theme/app_themes.dart';
import 'package:marlo_app/app/utils/important_files.dart';

import '../../../utils/app_theme/custom_theme.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<ChangeTheme>((event, emit) {
      if (state.checked == true) {
        emit(state.copyWith(checked: false));
        return CustomTheme.instanceOf(
                ScafoldKey.rootScaffoldMessengerKey.currentState!.context)
            .changeTheme(MyThemeKeys.LIGHT);
      } else {
        emit(state.copyWith(checked: true));
        return CustomTheme.instanceOf(
                ScafoldKey.rootScaffoldMessengerKey.currentState!.context)
            .changeTheme(MyThemeKeys.DARK);
      }
    });
  }
}
