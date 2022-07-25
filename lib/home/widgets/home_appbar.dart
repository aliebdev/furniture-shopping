part of "../home_screen.dart";

class _HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const _HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Hello, Ali Ebadi",
        style: TextStyle(
          color: AppColors.black,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 45,
            backgroundColor: AppColors.black,
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ],
      leadingWidth: 100,
      leading: InkWell(
        onTap: () {},
        child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.white,
          child: SvgPicture.asset("assets/icons/menu.svg"),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
