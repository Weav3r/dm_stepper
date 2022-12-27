import 'package:flutter/material.dart';

import 'core/constants/enums.dart';
import 'core/models/dm_step_colors_model.dart';

enum DMStepItem { background, border, icon, label, link, title }

class DMStep extends StatelessWidget {
  const DMStep({
    required this.label,
    this.title = '',
    this.dmStepIcon,
    this.dmStepType = DMStepType.current,
    this.last = false,
    this.direction = Axis.vertical,
    this.dmStepColorsModel,
    this.stepIcon,
    this.link,
    super.key,
  });

  final String label;
  final String title;
  final DMStepType dmStepType;
  final IconData? dmStepIcon;
  final bool last;
  final Widget? stepIcon;
  final Widget? link;
  final Axis direction;
  final DMStepColorsModel? dmStepColorsModel;

  @override
  Widget build(BuildContext context) {
    final lDmStepColorsModel = dmStepColorsModel ?? DMStepColorsModel();

    return Padding(
      padding: EdgeInsets.only(
        top: 8,
        left: (direction == Axis.vertical) ? 8 : 20,
        right: (direction == Axis.vertical) ? 8 : 0,
        bottom: (direction == Axis.horizontal) ? 8 : 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: dmStepType != DMStepType.next ? 0 : 3),
                  Container(
                    padding:
                        EdgeInsets.all(dmStepType != DMStepType.next ? 3 : 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: getColor(dmStepType, DMStepItem.border,
                              lDmStepColorsModel)),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: getColor(dmStepType, DMStepItem.background,
                            lDmStepColorsModel),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: stepIcon ??
                          Icon(
                            dmStepIcon ?? Icons.arrow_downward_rounded,
                            size: 20,
                            color: getColor(dmStepType, DMStepItem.icon,
                                lDmStepColorsModel),
                          ),
                    ),
                  ),
                ],
              ),
              getLink(direction == Axis.vertical, lDmStepColorsModel),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: getColor(
                      dmStepType, DMStepItem.label, lDmStepColorsModel),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                title,
                style: TextStyle(
                  color: getColor(
                      dmStepType, DMStepItem.title, lDmStepColorsModel),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          getLink(direction == Axis.horizontal, lDmStepColorsModel),
        ],
      ),
    );
  }

  Widget getLink(bool has, DMStepColorsModel dmStepColorsModel) {
    if (!last && has) {
      return link ??
          Padding(
            padding: EdgeInsets.only(
              top: (direction == Axis.vertical) ? 8 : 15,
              left: (direction == Axis.vertical) ? 8 : 20,
              right: (direction == Axis.vertical) ? 8 : 0,
              bottom: (direction == Axis.horizontal) ? 8 : 0,
            ),
            child: Container(
              height: direction == Axis.vertical ? 40 : 3,
              width: direction == Axis.vertical ? 3 : 60,
              decoration: BoxDecoration(
                color: getColor(dmStepType, DMStepItem.link, dmStepColorsModel),
                borderRadius: const BorderRadius.all(Radius.circular(2)),
              ),
            ),
          );
    } else {
      return const SizedBox();
    }
  }
}

Color getColor(DMStepType dmStepType, DMStepItem dmStepItem,
    DMStepColorsModel dmStepColorsModel) {
  if (dmStepType == DMStepType.done) {
    if (dmStepItem == DMStepItem.background) {
      return dmStepColorsModel.doneBackground!;
    } else if (dmStepItem == DMStepItem.border) {
      return dmStepColorsModel.doneBorder!;
    } else if (dmStepItem == DMStepItem.icon) {
      return dmStepColorsModel.doneIcon!;
    } else if (dmStepItem == DMStepItem.label) {
      return dmStepColorsModel.doneLabel!;
    } else if (dmStepItem == DMStepItem.link) {
      return dmStepColorsModel.doneLink!;
    }

    return dmStepColorsModel.doneTitle!;
  } else if (dmStepType == DMStepType.current) {
    if (dmStepItem == DMStepItem.background) {
      return dmStepColorsModel.currentBackground!;
    } else if (dmStepItem == DMStepItem.border) {
      return dmStepColorsModel.currentBorder!;
    } else if (dmStepItem == DMStepItem.icon) {
      return dmStepColorsModel.currentIcon!;
    } else if (dmStepItem == DMStepItem.label) {
      return dmStepColorsModel.currentLabel!;
    } else if (dmStepItem == DMStepItem.link) {
      return dmStepColorsModel.currentLink!;
    }

    return dmStepColorsModel.currentTitle!;
  } else {
    if (dmStepItem == DMStepItem.background) {
      return dmStepColorsModel.nextBackground!;
    } else if (dmStepItem == DMStepItem.border) {
      return dmStepColorsModel.nextBorder!;
    } else if (dmStepItem == DMStepItem.icon) {
      return dmStepColorsModel.nextIcon!;
    } else if (dmStepItem == DMStepItem.label) {
      return dmStepColorsModel.nextLabel!;
    } else if (dmStepItem == DMStepItem.link) {
      return dmStepColorsModel.nextLink!;
    }

    return dmStepColorsModel.nextTitle!;
  }
}
