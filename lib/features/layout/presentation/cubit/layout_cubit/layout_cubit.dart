

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_it/features/settings/presentation/views/settings_view.dart';
import 'package:watch_it/home_view.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int currentIndex = 0;

  List<Widget> views = [
    HomeView(),
    SettingsView()
  ];

  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(LayoutChange());
  }
}
