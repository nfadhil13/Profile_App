part of '../login_screen.dart';

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final _nameForm = GlobalKey<FormState>();
  final _polindromeForm = GlobalKey<FormState>();
  var _name = "";
  var _polindrome = "";

  void _doIfStateValid(
      GlobalKey<FormState> state, void Function() doIfSuccess) {
    final currentState = state.currentState;
    if (currentState != null && currentState.validate()) {
      currentState.save();
      doIfSuccess();
    }
  }

  void _next(BuildContext context) {
    _doIfStateValid(_nameForm, () {
      context.navigator.pushNamed(HomeScreen.routeName, arguments: _name);
    });
  }

  void _checkPolindrome(BuildContext context) {
    _doIfStateValid(_polindromeForm, () {
      final isPolindrome = _polindrome.isPolindrome();
      showDialog(
          context: context,
          builder: (context) =>
              Dialog(child: _PolindromeDialog(isPolindrome: isPolindrome)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _nameForm,
          child: BaseTextFormField(
            hintText: "Name",
            validator: (value) {
              const emptyWarn = "Name must not be empty";
              if (value == null) return emptyWarn;
              if (value.isEmpty) return emptyWarn;
              return null;
            },
            onSaved: (value) {
              if (value != null) _name = value;
            },
          ),
        ),
        const SizedBox(height: 16),
        Form(
          key: _polindromeForm,
          child: BaseTextFormField(
            hintText: "Polindrome",
            validator: (value) {
              const emptyWarn = "Polindrom must not be empty for check";
              if (value == null) return emptyWarn;
              if (value.isEmpty) return emptyWarn;
              return null;
            },
            onSaved: (value) {
              if (value != null) _polindrome = value;
            },
          ),
        ),
        const SizedBox(height: 50),
        PrimaryButton(
            text: "CHECK",
            onPressed: () {
              _checkPolindrome(context);
            }),
        PrimaryButton(
            text: "NEXT",
            onPressed: () {
              _next(context);
            })
      ],
    );
  }
}
