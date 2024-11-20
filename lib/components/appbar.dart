import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final TextStyle? titleTextStyle;
  final IconThemeData? iconTheme;
  final double? elevation;
  final double? width;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.titleTextStyle,
    this.iconTheme,
    this.elevation = 4.0,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      child: AppBar(
        leading: leading ??
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: iconTheme?.color ?? Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
        title: Text(
          title,
          style: titleTextStyle ??
              const TextStyle(fontSize: 18, color: Color(0xFF013252)),
        ),
        centerTitle: centerTitle,
        actions: actions,
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        elevation: elevation,
        iconTheme: iconTheme ?? const IconThemeData(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
