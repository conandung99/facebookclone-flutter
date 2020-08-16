import 'package:facebookclone/configs/pallete.dart';
import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function onTap;

  const CustomTabbar(
      {Key key,
      @required this.icons,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      onTap: onTap,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3.0,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(e,
                color: i == selectedIndex ? Palette.facebookBlue : Colors.black45,
                  size: 30.0,
                ),

              )))
          .values
          .toList(),
    );
  }
}