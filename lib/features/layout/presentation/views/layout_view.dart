import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_it/core/constant/app_colors.dart';
import 'package:watch_it/core/constant/app_icons.dart';
import 'package:watch_it/core/constant/app_strings.dart';
import 'package:watch_it/features/layout/presentation/cubit/layout_cubit/layout_cubit.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          return Scaffold(
            body: context
                .read<LayoutCubit>()
                .views[context.read<LayoutCubit>().currentIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: AppColors.primaryDark,
                currentIndex: context.read<LayoutCubit>().currentIndex,
                onTap: (index) {
                  context.read<LayoutCubit>().changeCurrentIndex(index);
                },
                selectedItemColor: AppColors.blueAccent,
                unselectedItemColor: AppColors.lightText,

                items: [
                  BottomNavigationBarItem(
                    label: AppStrings.home,
                    icon: Icon(AppIcons.home),
                  ),
                  BottomNavigationBarItem(
                    label: AppStrings.settings,
                    icon: Icon(AppIcons.settings),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
