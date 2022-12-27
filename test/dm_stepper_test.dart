// Copyright 2022 Diney DM <dineydm@gmail.com>
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a GPL-3.0 license that can be
// found in the LICENSE file.

import 'package:dm_stepper/dm_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Stepper visibility test', (WidgetTester tester) async {
    await tester.pumpWidget(
      CupertinoApp(
        home: DMStepper([
          DMStepModel(
            title: 'A',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.done,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
          DMStepModel(
            title: 'B',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.next,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
        ]),
      ),
    );

    expect(find.text('A'), findsOneWidget);
    expect(find.text('B'), findsNothing);

    await tester.pumpWidget(
      CupertinoApp(
        home: DMStepper([
          DMStepModel(
            title: 'A',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.done,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
          DMStepModel(
            title: 'B',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.next,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
        ]),
      ),
    );

    expect(find.text('A'), findsNothing);
    expect(find.text('B'), findsOneWidget);
  });

  testWidgets('Stepper disabled step test', (WidgetTester tester) async {
    int index = 0;

    await tester.pumpWidget(
      CupertinoApp(
        home: DMStepper([
          DMStepModel(
            title: 'Step 1',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.done,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
          DMStepModel(
            title: 'Step 2',
            dmStepIcon: Icons.check,
            dmStepType: DMStepType.next,
            dmStepColorsModel: DMStepColorsModel().copyWith(
              doneIcon: Colors.red,
              doneBackground: Colors.limeAccent,
            ),
          ),
        ]),
      ),
    );

    await tester.tap(find.text('Step 2'));
    expect(index, 0);
  });
}
