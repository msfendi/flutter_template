import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/bloc/auth/auth_session_bloc.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/idle/idle_item.dart';
import 'package:flutter_template/routing/route.gr.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: MyTheme.color.primary,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<AuthSessionBloc>(
            create: (context) => AuthSessionBloc(),
          ),
        ],
        child: const SplashBody(),
      ),
    );
  }
}


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthSessionBloc, AuthSessionState>(
      listener: (context, state) async {
        if (state is AuthSessionsLoadedState) {
          Permission.notification.request();
          Future.delayed(const Duration(seconds: 2)).then((value) {
            if (state.sessions) {
              context.router.pushAndPopUntil(const HomeRoute(), predicate: (route) => true);
            } else {
              context.router.pushAndPopUntil(const HomeRoute(), predicate: (route) => true);
            }
          });
        }
      },
      child: Stack(
        children: [
          Center(
            child: ZoomIn(
              delay: const Duration(milliseconds: 700),
              duration: const Duration(milliseconds: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    flavor.current.logoPath,
                    width: AppSetting.deviceWidth,
                    height: AppSetting.deviceHeight * 0.2,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const IdleLoading(),
                    Space.h(30),
                    Text(
                      "Ver 1.0.0",
                      style: MyTheme.style.subtitle.copyWith(
                        color: MyTheme.color.white,
                        fontSize: AppSetting.setFontSize(40),
                      ),
                    ),
                    Space.h(50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
