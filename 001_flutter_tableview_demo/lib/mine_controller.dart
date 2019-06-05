import 'package:flutter/material.dart';
import 'mine_cell.dart';
import 'mine_model.dart';

class MineController extends StatelessWidget {
   final List<String> _meCellTitles = [
    '钱包',
    '消费充值记录',
    '购买的书',
    '我的会员',
    '绑兑换码',
    '阅读之约',
    '公益行动',
    '我的收藏',
    '打赏记录',
    '我的书评',
    '个性换肤',
    '设置',
    'Github',
  ];

  final List<String> _meCellIconNames = [
    'img/me_wallet.png',
    'img/me_record.png',
    'img/me_buy.png',
    'img/me_vip.png',
    'img/me_coupon.png',
    'img/me_date.png',
    'img/me_action.png',
    'img/me_favorite.png',
    'img/me_record.png',
    'img/me_comment.png',
    'img/me_theme.png',
    'img/me_setting.png',
    'img/me_feedback.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            buildCells(context),
          ],
        ),
      ),
    );
  }

  Widget buildCells(BuildContext context) {
    if(_meCellTitles.length != _meCellTitles.length) {
      return Container();
    }

    List<Widget> cells = [];
    _meCellTitles.forEach((title){
      int index = _meCellTitles.indexOf(title);
      String iconName = _meCellIconNames[index];
      MineModel mineModel = MineModel(iconName, title);
      mineModel.clickedCallBack = () {
        print('点击了第($index)行，标题为$title');
      };
      MineCell cell = MineCell(mineModel);
      cells.add(cell);

    });

    return Container(
      child: Column(
        children: cells,
      ),
      color: Colors.white,
    );
  }
}