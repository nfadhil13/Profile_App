part of '../home_screen.dart';

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        Widget avatar = const _ProfileAvatar();
        Widget profileText = const _ProfileText();
        state.doWhen(onUserSelected: (state) {
          avatar = _ProfileAvatar(imageURL: state.user.profileURL);
          profileText = _ProfileText(user: state.user);
        });
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [avatar, const SizedBox(height: 30), profileText],
        );
      },
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  final String? imageURL;

  const _ProfileAvatar({Key? key, this.imageURL}) : super(key: key);

  ImageProvider<Object> backgroundImage() {
    final imageURL = this.imageURL;
    if (imageURL == null) return const AssetImage("assets/profile.png");
    return NetworkImage(imageURL);
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: backgroundImage(),
      radius: 75,
    );
  }
}

class _ProfileText extends StatelessWidget {
  final User? user;
  const _ProfileText({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = this.user;
    if (user == null) return const Text("Select a user to show the profile");
    return Column(
      children: [
        Text(
          user.name,
          style: context.textTheme.displayMedium,
        ),
        const SizedBox(height: 20),
        Text(user.email,
            style: context.textTheme.displaySmall
                ?.copyWith(fontWeight: FontWeight.normal)),
        const SizedBox(height: 20),
        TextButton(
          onPressed: (){
            context.navigator.push(MaterialPageRoute(builder: (ctx) => const BaseWebView(url: "https://suitmedia.com/")));
          },
          child: Text(
            "website",
            style: context.textTheme.bodyMedium?.copyWith(
                color: ColorTheme.primary, decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
