import 'package:flutter/material.dart';
import 'package:theme/constant/path/icon_paths.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                IconPaths.iconPageNotFound,
              ),
            ),
            const Text("Page not found"),
          ],
        ),
      ),
    );
  }
}
