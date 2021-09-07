enum NavigatorType { Child, Main }

class Menu {
  final String title;
  final String icon;
  final String path;
  final NavigatorType type;

  Menu(
      {required this.title,
      this.icon = '',
      required this.path,
      this.type = NavigatorType.Child});
}
