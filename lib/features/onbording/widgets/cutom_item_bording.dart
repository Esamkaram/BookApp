import 'package:bookappnewstar/core/cach/cach_helper.dart';
import 'package:bookappnewstar/core/functions/navicator.dart';
import 'package:bookappnewstar/features/home/ui/home_screen.dart';
import 'package:bookappnewstar/features/onbording/cubit/onbording_cubit.dart';
import 'package:bookappnewstar/features/onbording/model/bordeing_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CutomItemBording extends StatelessWidget {
  const CutomItemBording(
      {super.key, required this.model, required this.onbordingCubit, required this.index});
  final BordeingModel model;
  final OnbordingCubit onbordingCubit;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image(
        image: AssetImage('${model.image}'),
        height: 600.0,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        '${model.title}',
        style: const TextStyle(
          fontSize: 24.0,
        ),
      ),
      SmoothPageIndicator(
        controller: onbordingCubit.boardController,
        count: 4,
        effect: const ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.grey,
          dotHeight: 10,
          dotWidth: 10,
          spacing: 5,
          expansionFactor: 4,
        ),
      ),
      const Spacer(),
      FloatingActionButton(
        onPressed: () async {
          if (onbordingCubit.selectIndex ==
              onbordingCubit.bordeingmodel.length - 1) {
            // submit();
            await CacheHelper.saveData(
              key: 'inBoarding',
              value: true,
            );
            context.pushAndRemoveUntil(const HomeScreen());
          } else {
            onbordingCubit.selectIndex = index;
            onbordingCubit.boardController.nextPage(
              duration: const Duration(
                milliseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          }
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    ]);
  }
}
