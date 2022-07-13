import 'package:flutter/material.dart';

class FlexibleSingleChildScrollView extends StatelessWidget {
  final Widget child;
  const FlexibleSingleChildScrollView({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: child,
          ),
        );
      },
    );
  }
}

