import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YellowButton extends StatelessWidget {
  final String defaultRoute;
  final bool shouldReplace;
  final String title;
  final Icon? icon;

  const YellowButton({
    super.key,
    required this.defaultRoute,
    this.shouldReplace = false,
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (shouldReplace) {
            context.push(defaultRoute);
          } else {
            context.push(defaultRoute);
          }
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
            ),
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 8),
            ],
          ],
        ),
      ),
    );
  }
}
