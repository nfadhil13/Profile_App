part of '../login_screen.dart';

class _PolindromeDialog extends StatelessWidget {
  final bool isPolindrome;
  const _PolindromeDialog({Key? key, required this.isPolindrome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final message = isPolindrome ? "Is Polindrome" : "Not Polindrome";
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(message, style: context.textTheme.bodyLarge?.copyWith(
        color: isPolindrome ? Colors.green : Colors.red
      ), textAlign: TextAlign.center, ),
    );
  }
}
