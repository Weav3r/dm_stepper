import 'package:flutter/material.dart';

import '/core/models/dm_step_model.dart';
import 'dm_step.dart';

class DMStepper extends StatelessWidget {
  const DMStepper(
    this.dmStepList, {
    this.direction = Axis.vertical,
    this.backgroundColor,
    this.height,
    super.key,
  });

  final List<DMStepModel> dmStepList;
  final Axis direction;
  final Color? backgroundColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = dmStepList
        .map((e) => DMStep(
              label: e.label ?? 'STEP ${dmStepList.indexOf(e) + 1}',
              title: e.title,
              dmStepIcon: e.dmStepIcon,
              dmStepType: e.dmStepType,
              stepIcon: e.stepIcon,
              last: dmStepList.length == dmStepList.indexOf(e) + 1,
              key: Key('DM_STEP_${dmStepList.indexOf(e) + 1}'),
              direction: direction,
              dmStepColorsModel: e.dmStepColorsModel,
            ))
        .toList();
    final bool isVertical = direction == Axis.vertical;
    final Widget child = isVertical
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: children,
          );

    return Container(
      constraints: const BoxConstraints(),
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: SingleChildScrollView(
        scrollDirection: isVertical ? Axis.vertical : Axis.horizontal,
        child: child,
      ),
    );
  }
}
