import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String title;

  final VoidCallback? onPressed;

  ListTitle({required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.chevron_right_outlined,
              size: 14,
              color: Colors.white70,
            )
          ],
        ),
      ),
    );
  }
}
