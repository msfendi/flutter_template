import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/injection/injector.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';
import 'package:flutter_template/routing/route.dart';
import 'package:flutter_template/routing/route_observer.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = inject<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
        navigatorObservers: () => [RouterObserver()],
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith("/invoice")) {
            /// Do something
            return deepLink;
          } else {
            return DeepLink.defaultPath;
          }
        }
      ),
      useInheritedMediaQuery: true,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      title: flavor.current.name,
      debugShowCheckedModeBanner: false,
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        return supportedLocales.first;
      },
      builder: (ctx, child) {
        AppSetting.setupScreenUtil(ctx);
        return MediaQuery(
          data: MediaQuery.of(ctx).copyWith(),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: flavor.current.type == FlavorType.prod
                ? child!
                : Banner(
                location: BannerLocation.topEnd,
                message: flavor.current.type.toString().split('.').last.toUpperCase(),
                child: child!
            ),
          ),
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context,
      Widget child,
      AxisDirection axisDirection,
      ) {
    return child;
  }
}