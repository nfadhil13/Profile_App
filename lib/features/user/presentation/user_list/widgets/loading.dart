part of '../user_list_screen.dart';

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CircularProgressIndicator(color: ColorTheme.primary,),
          SizedBox(height: 18),
          LoadingText("Getting users data")
        ],
      ),
    );
  }
}
