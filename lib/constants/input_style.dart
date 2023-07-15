import 'package:flutter/material.dart';

import 'colors.dart';

var inputStyle = InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.primaryColor,
    ),
  ),
);
