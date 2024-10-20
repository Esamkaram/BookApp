part of 'onbording_cubit.dart';

@immutable
sealed class OnbordingState {}

final class OnbordingInitial extends OnbordingState {}

final class OnbordingSuccessInitial extends OnbordingState {}