import 'package:auto_route/auto_route.dart';
import 'package:dribble_design_marketplace/Core/Routing/translate_transition_builder.dart';
import 'package:flutter/material.dart';

import '../../Home/Data/models/cart_item.dart';
import '../../Home/Presentation/home_screen.dart';
import '../../Home/Presentation/item_page/item_page.dart';
import '../../Settings/Presentation/settings_screen.dart';
import '../../Voucher/Presentation/voucher_screen.dart';
import '../../Wallet/Presentation/wallet_screen.dart';
import '../Presentation/routing_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  static final homeRoutes = <AutoRoute>[
    AutoRoute(
      page: HomeRoutingRoute.page,
      path: "",
      children: [
        AutoRoute(page: HomeRoute.page, path: ""),
      ],
    ),
    AutoRoute(page: VoucherRoute.page, path: "voucher"),
    AutoRoute(page: WalletRoute.page, path: "wallet"),
    AutoRoute(page: SettingsRoute.page, path: "settings"),
  ];

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: RootRoute.page,
      initial: true,
      path: "/",
      children: homeRoutes,
    ),
    CustomRoute(
      page: ItemRoute.page,
      path: "/item",
      durationInMilliseconds: 450,
      reverseDurationInMilliseconds: 450,
      transitionsBuilder: TranslateTransitionBuilder.translateTransition,
    )
  ];
}
