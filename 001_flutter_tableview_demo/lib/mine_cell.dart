import 'package:flutter/material.dart';
import 'mine_model.dart';

class MineCell extends StatelessWidget {
  final MineModel mineModel;
  MineCell(this.mineModel);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mineModel.clickedCallBack,
      child: Column(
        children: <Widget>[
          //正常cell内容
          Container(
            height: 60,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Image.asset(mineModel.iconName),
                SizedBox(width: 30),
                Text(
                  mineModel.title,
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(child: Container()),
                Image.asset('img/arrow_right.png'),
              ],
            ),
          ),
          //cell底部的line
          Container(
            color: Colors.blueGrey[100],
            height: 1,
            margin: EdgeInsets.only(left: 60),
          ),
        ],
      ),
    );
  }
}