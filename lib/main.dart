
void main() async {

  runApp(
    MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppConfig.theme(context: context, theme: theme),
      darkTheme: AppConfig.theme(context: context, theme: theme),
    );
  }
}
