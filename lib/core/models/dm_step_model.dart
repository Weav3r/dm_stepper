import 'package:flutter/material.dart';

import '/core/constants/enums.dart';
import '/core/models/dm_step_colors_model.dart';

class DMStepModel {
  final String? label;
  final String title;
  final DMStepType dmStepType;
  final IconData? dmStepIcon;
  final Widget? stepIcon;
  final Widget? link;
  final DMStepColorsModel? dmStepColorsModel;

  DMStepModel({
    this.label,
    this.title = '',
    this.dmStepType = DMStepType.current,
    this.dmStepIcon,
    this.stepIcon,
    this.link,
    this.dmStepColorsModel,
  });
}
