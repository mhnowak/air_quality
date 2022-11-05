import 'package:flutter/material.dart';

class AQAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AQAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;

  @override
  Size get preferredSize => const Size(kToolbarHeight, 0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title!) : null,
    );
  }
}
