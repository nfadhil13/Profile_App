part of '../user_list_screen.dart';

class _UserList extends StatelessWidget {
  final List<User> userList;
  const _UserList({Key? key, required this.userList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<UserListCubit>().getAllUser();
      },
      child: ListView.builder(
          itemBuilder: ((context, index) {
            final user = userList[index];
            return Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: _UserListItem(user: user, key: Key(user.id))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    color: Colors.grey,
                    height: 0.5,
                  ),
                )
              ],
            );
          }),
          itemCount: userList.length),
    );
  }
}

class _UserListItem extends StatelessWidget {
  final User user;

  const _UserListItem({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pop(context, user);
      },
      leading: CircleAvatar(
          backgroundImage: NetworkImage(user.profileURL), radius: 20),
      dense: true,
      title: Text(user.name, style: context.textTheme.labelMedium),
      subtitle: Text(user.email),
    );
  }
}
