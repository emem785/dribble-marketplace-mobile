import 'package:auto_route/auto_route.dart';
import 'package:dribble_design_marketplace/Core/Routing/routes.dart';
import 'package:dribble_design_marketplace/gen/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoutingRoute(),
        VoucherRoute(),
        WalletRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (navContext, tabsRouter) {
        return SizedBox(
          height: 80,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Assets.svg.home.svg(),
                activeIcon: Assets.svg.homeSolid.svg(),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.voucher.svg(),
                activeIcon: Assets.svg.voucherSolid.svg(),
                label: 'Voucher',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.wallet.svg(),
                activeIcon: Assets.svg.walletSolid.svg(),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.setting.svg(),
                activeIcon: Assets.svg.settingSolid.svg(),
                label: 'Settings',
              ),
            ],
            elevation: 5.0,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            selectedLabelStyle: const TextStyle(color: Colors.black87),
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: Colors.black87,
            onTap: tabsRouter.setActiveIndex,
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            showSelectedLabels: true,
          ),
        );
      },
    );
  }
}
