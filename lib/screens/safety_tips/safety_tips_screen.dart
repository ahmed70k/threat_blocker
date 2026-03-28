import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import '../../theme/app_text_styles.dart';
import 'build_tip_card.dart';


class SafetyTipsScreen extends StatelessWidget {
  static const String routeName = '/safety-tips';

  const SafetyTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
     /// List of safety tips with title, description, icon, and color
    final List<Map<String, dynamic>> tips = [
      {
        'title': l10n.tip1Title,
        'desc': l10n.tip1Desc,
        'icon': Icons.domain_verification_rounded,
        'color': Colors.blue,
      },
      {
        'title': l10n.tip2Title,
        'desc': l10n.tip2Desc,
        'icon': Icons.lock_outline_rounded,
        'color': Colors.green,
      },
      {
        'title': l10n.tip3Title,
        'desc': l10n.tip3Desc,
        'icon': Icons.priority_high_rounded,
        'color': Colors.orange,
      },
      {
        'title': l10n.tip4Title,
        'desc': l10n.tip4Desc,
        'icon': Icons.link_off_rounded,
        'color': Colors.purple,
      },
      {
        'title': l10n.tip5Title,
        'desc': l10n.tip5Desc,
        'icon': Icons.security_rounded,
        'color': Colors.red,
      },
    ];
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: theme.colorScheme.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.safetyTipsTitle,
          style: AppTextStyles.appBarTitle20.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        /// Using Column to display a list of safety tips, each represented by a BuildTipCard widget, and mapping the list of tips to create the cards dynamically
        child: Column(
          children: tips.map((tip) =>BuildTipCard(tip: tip)).toList(),
        ),
      ),
    );
  }
}

