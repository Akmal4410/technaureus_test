import 'package:flutter/material.dart';

//----------------- Sizded Box -------------------
const kSizedBox = SizedBox();
const kHeight1 = SizedBox(height: 1);
const kHeight2 = SizedBox(height: 2);
const kHeight4 = SizedBox(height: 4);
const kHeight8 = SizedBox(height: 8);
const kHeight12 = SizedBox(height: 12);
const kHeight16 = SizedBox(height: 16);
const kHeight20 = SizedBox(height: 20);
const kHeight24 = SizedBox(height: 24);
const kHeight30 = SizedBox(height: 30);
const kHeight86 = SizedBox(height: 86);

const kWidth2 = SizedBox(width: 2);
const kWidth4 = SizedBox(width: 4);
const kWidth8 = SizedBox(width: 8);
const kWidth12 = SizedBox(width: 12);
const kWidth16 = SizedBox(width: 16);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);

//----------------- Divider -------------------
final kAppDivider = Divider(
  color: Colors.grey.shade700,
  thickness: 0.6,
);

final kDividerLight = Divider(
  color: Colors.grey.shade300,
  thickness: 1,
);

Widget buildVerticalDivider() {
  return Container(
    height: double.infinity,
    width: 1.0,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.grey.withOpacity(0.5),
          Colors.transparent,
        ],
      ),
    ),
  );
}

// ---------------- Padding ------------------------
const kAppPaddingAll5 = EdgeInsets.all(5);

const kAppPaddingAll12 = EdgeInsets.all(12);
const kAppPaddingAll16 = EdgeInsets.all(16);

const kAppPaddingHorizontal10 = EdgeInsets.symmetric(horizontal: 10);
const kAppPaddingVertical10 = EdgeInsets.symmetric(vertical: 10);

const kAppPaddingVertical15 = EdgeInsets.symmetric(vertical: 15);

const kAppbarLeftPadding = EdgeInsets.only(left: 13, top: 13, bottom: 13);
const kAppbarRightPadding = EdgeInsets.only(right: 13, top: 13, bottom: 13);
