import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potea_plant_e_commerce/DesignSystem/size/app_size.dart';

import '../../../../DesignSystem/colors/app_colors.dart';
import '../../../../DesignSystem/icons/app_icons.dart';
import '../../../../DesignSystem/notification/app_notification_card.dart';
import '../../../../DesignSystem/padding/app_padding.dart';
import '../../../../DesignSystem/typography/text_style.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          ListTile(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(AppIcons.arrowLeft)),
            title: TextStyles.heading4('Notification', AppColors.grey900),
            trailing: SvgPicture.asset(AppIcons.moreCircle, color: AppColors.grey900,),
          ),
          const SizedBox(
            height: 33.0,
          ),
          AppPadding.paddingOnlyWidget(
              TextStyles.heading6('Today', AppColors.grey900),
              24.0,
              24.0,
              0.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppNotificationCard.notificationCard(context, AppIcons.discountBoldIcon, '30% Special Discount!', 'Special promotion only valid today'),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              TextStyles.heading6('Yesterday', AppColors.grey900),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppNotificationCard.notificationCard(context, AppIcons.walletBoldIcon, 'Top Up E-Wallet Successful!', 'You have to top up your e-wallet'),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppNotificationCard.notificationCard(context, AppIcons.locationBoldIcon, 'New Services Available!', 'Now you can track orders in real time'),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              TextStyles.heading6('December 22, 2024', AppColors.grey900),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppNotificationCard.notificationCard(context, AppIcons.creditBoldIcon, 'Credit Card Connected!', 'Credit Card has been linked!'),
              24.0,
              24.0,
              24.0,
              0.0),
          AppPadding.paddingOnlyWidget(
              AppNotificationCard.notificationCard(context, AppIcons.profileBoldIcon, 'Account Setup Successful!', 'Your account has been created!'),
              24.0,
              24.0,
              24.0,
              0.0),
        ],
      ),
    );
  }
}
