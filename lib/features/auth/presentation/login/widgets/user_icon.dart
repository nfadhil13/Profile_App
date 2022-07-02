part of '../login_screen.dart';

class _UserIcon extends StatelessWidget {
  const _UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: ColorTheme.primary[100]),
      child: const Icon(Icons.person_add_alt_1, color: ColorTheme.onPrimary),
    );
  }
}
