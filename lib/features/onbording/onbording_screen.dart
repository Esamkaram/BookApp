import 'package:bookappnewstar/core/cach/cach_helper.dart';
import 'package:bookappnewstar/core/functions/navicator.dart';
import 'package:bookappnewstar/features/home/ui/home_screen.dart';
import 'package:bookappnewstar/features/onbording/cubit/onbording_cubit.dart';
import 'package:bookappnewstar/features/onbording/widgets/cutom_item_bording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnbordingCubit onbordingCubit = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () async {
                await CacheHelper.saveData(
                  key: 'inBoarding',
                  value: true,
                );
                context.pushAndRemoveUntil(const HomeScreen());
              },
              child: const Text('SKIP'))
        ],
      ),
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: onbordingCubit.boardController,
        onPageChanged: (int index) {
          //
          //   setState(() {
          //     isLast = true;
          //   });
          // } else {
          //   setState(() {
          //     isLast = false;
          //   });
          // }
          onbordingCubit.ChageIndex(index);
        },
        itemBuilder: (context, index) => CutomItemBording(
          model: onbordingCubit.bordeingmodel[index],
          onbordingCubit: onbordingCubit,
          index: index,
        ),
        itemCount: onbordingCubit.bordeingmodel.length,
      ),
    );
  }
}
