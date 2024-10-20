import 'package:bloc/bloc.dart';
import 'package:bookappnewstar/constants/assets.dart';
import 'package:bookappnewstar/features/onbording/model/bordeing_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'onbording_state.dart';

class OnbordingCubit extends Cubit<OnbordingState> {
  OnbordingCubit() : super(OnbordingInitial());

  int selectIndex = 0;

  List<BordeingModel> bordeingmodel = [
      BordeingModel(
        image: Assets.assetsImagesWavy01,
        title: ' ',
      ),
      BordeingModel(
        image: Assets.assetsImagesWavy02,
        title: ' ',
      ),
      BordeingModel(
        image: Assets.assetsImagesWavy03,
        title: ' ',
      ),
      BordeingModel(
        image: Assets.assetsImagesWavy04,
        title: ' ',
      ),
    ];
    var boardController = PageController();
    bool isLast = false;


  void ChageIndex(int index) {
    selectIndex = index;
    emit(OnbordingSuccessInitial());
  }
}
