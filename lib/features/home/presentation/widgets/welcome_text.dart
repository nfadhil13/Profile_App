part of '../home_screen.dart';

class _WelcomeText extends StatelessWidget {
  final String name;
  const _WelcomeText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome", style: context.textTheme.bodySmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal
          )),
          Text(name, style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}