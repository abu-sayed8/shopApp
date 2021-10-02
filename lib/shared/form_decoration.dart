import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const FormDecoration=InputDecoration(
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      //gapPadding: 10
      borderSide: BorderSide.none,
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none
  ),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none
  ),
  fillColor:Colors.white,
  border: InputBorder.none,
  filled: true,
);