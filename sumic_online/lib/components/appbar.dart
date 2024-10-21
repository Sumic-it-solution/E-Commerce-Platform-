import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Required title
  final bool centerTitle; // Optional: Whether the title should be centered
  final List<Widget>? actions; // Optional: Customizable actions
  final Widget? leading; // Optional: Customizable leading icon
  final Color? backgroundColor; // Optional: Background color
  final TextStyle? titleTextStyle; // Optional: Customizable title text style
  final IconThemeData? iconTheme; // Optional: Customizable icon theme
  final double? elevation; // Optional: Customizable elevation
  final double? width; // Optional: Custom width for the AppBar

  const CustomAppBar({
    super.key,
    required this.title, // Required title
    this.centerTitle = true, // Optional: Center title by default
    this.actions, // Optional: Custom actions
    this.leading, // Optional: Custom leading widget
    this.backgroundColor, // Optional: Background color
    this.titleTextStyle, // Optional: Custom title text style
    this.iconTheme, // Optional: Custom icon theme
    this.elevation = 4.0, // Optional: Default elevation of 4.0
    this.width, // Optional: Custom width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width, // Set the width
      child: AppBar(
        leading: leading ??
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: iconTheme?.color ??
                    Colors.white, // Apply optional icon color
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
        title: Text(
          title,
          style: titleTextStyle ??
              const TextStyle(
                  fontSize: 18,
                  color: Colors.white), // Use default or custom title style
        ),
        centerTitle: centerTitle,
        actions: actions,
        backgroundColor: backgroundColor ??
            Theme.of(context)
                .primaryColor, // Use default or provided background color
        elevation: elevation, // Use default or custom elevation
        iconTheme: iconTheme ??
            const IconThemeData(
                color: Colors.white), // Apply custom or default icon theme
      ),
    );
  }

  // Override preferredSize to specify the AppBar's height
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
