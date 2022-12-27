import 'package:flutter/material.dart';

import '/core/constants/colors.dart';

class DMStepColorsModel {
  final Color? doneBackground;
  final Color? currentBackground;
  final Color? nextBackground;

  final Color? doneBorder;
  final Color? currentBorder;
  final Color? nextBorder;

  final Color? doneIcon;
  final Color? currentIcon;
  final Color? nextIcon;

  final Color? doneLabel;
  final Color? currentLabel;
  final Color? nextLabel;

  final Color? doneLink;
  final Color? currentLink;
  final Color? nextLink;

  final Color? doneTitle;
  final Color? currentTitle;
  final Color? nextTitle;

  DMStepColorsModel({
    this.doneBackground = doneBackgroundColor,
    this.currentBackground = currentBackgroundColor,
    this.nextBackground = nextBackgroundColor,
    this.doneBorder = doneBorderColor,
    this.currentBorder = currentBorderColor,
    this.nextBorder = nextBorderColor,
    this.doneIcon = doneIconColor,
    this.currentIcon = currentIconColor,
    this.nextIcon = nextIconColor,
    this.doneLabel = doneLabelColor,
    this.currentLabel = currentLabelColor,
    this.nextLabel = nextLabelColor,
    this.doneLink = doneLinkColor,
    this.currentLink = currentLinkColor,
    this.nextLink = nextLinkColor,
    this.doneTitle = doneTitleColor,
    this.currentTitle = currentTitleColor,
    this.nextTitle = nextTitleColor,
  });

  DMStepColorsModel copyWith({
    Color? doneBackground,
    Color? currentBackground,
    Color? nextBackground,
    Color? doneBorder,
    Color? currentBorder,
    Color? nextBorder,
    Color? doneIcon,
    Color? currentIcon,
    Color? nextIcon,
    Color? doneLabel,
    Color? currentLabel,
    Color? nextLabel,
    Color? doneLink,
    Color? currentLink,
    Color? nextLink,
    Color? doneTitle,
    Color? currentTitle,
    Color? nextTitle,
  }) {
    return DMStepColorsModel(
      doneBackground: doneBackground ?? this.doneBackground,
      currentBackground: currentBackground ?? this.currentBackground,
      nextBackground: nextBackground ?? this.nextBackground,
      doneBorder: doneBorder ?? this.doneBorder,
      currentBorder: currentBorder ?? this.currentBorder,
      nextBorder: nextBorder ?? this.nextBorder,
      doneIcon: doneIcon ?? this.doneIcon,
      currentIcon: currentIcon ?? this.currentIcon,
      nextIcon: nextIcon ?? this.nextIcon,
      doneLabel: doneLabel ?? this.doneLabel,
      currentLabel: currentLabel ?? this.currentLabel,
      nextLabel: nextLabel ?? this.nextLabel,
      doneLink: doneLink ?? this.doneLink,
      currentLink: currentLink ?? this.currentLink,
      nextLink: nextLink ?? this.nextLink,
      doneTitle: doneTitle ?? this.doneTitle,
      currentTitle: currentTitle ?? this.currentTitle,
      nextTitle: nextTitle ?? this.nextTitle,
    );
  }
}
