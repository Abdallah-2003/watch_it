part of 'layout_cubit.dart';

sealed class LayoutState {}

final class LayoutInitial extends LayoutState {}
final class LayoutChange extends LayoutState {}
