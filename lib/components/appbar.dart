import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Required title
  final bool centerTitle; // Optional: Whether the title should be centered
  final List<Widget>? actions; // Optional: Customizable actions
  final Widget? leading; // Optional: Customizable leading icon
  final Color? backgroundColor; // Optional: Background color

  const CustomAppBar({
    super.key,
    required this.title, // Required title
    this.centerTitle = true, // Optional: Center title by default
    this.actions, // Optional: Custom actions
    this.leading, // Optional: Custom leading widget
    this.backgroundColor, // Optional: Background color
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
    );
  }

  // Override preferredSize to specify the AppBar's height
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
