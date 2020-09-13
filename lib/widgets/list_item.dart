import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardListItem extends StatelessWidget {
  CardListItem({@required this.icons, this.onPress, this.title});

  final String title;
  final IconData icons;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      height: ScreenUtil().setSp(190),
      
      child: Card(
        child: ListTile(
          onTap: onPress,
          title: Text(
            title ?? "",
            style: TextStyle(fontSize: ScreenUtil().setSp(160)),
          ),
          trailing: Icon(icons ?? Icons.warning),
        ),
      ),
    );
  }
}
