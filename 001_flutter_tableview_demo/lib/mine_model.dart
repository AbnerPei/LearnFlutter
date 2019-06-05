import 'package:flutter/material.dart';

class MineModel {
  String iconName;
  String title;
  VoidCallback clickedCallBack;
  MineModel(this.iconName, this.title, {this.clickedCallBack});
}