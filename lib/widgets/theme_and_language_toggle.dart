import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threat_blocker/Providers/app_theme/app_theme_provider.dart';

class ThemeAndLanguageToggle extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? iconSunny;
  final Widget? iconNightlight;
  final Widget? en;
  final Widget? ar;
  final bool isToggled;

  ThemeAndLanguageToggle({
    super.key,
    this.iconSunny,
    this.ar,
    this.en,
    this.iconNightlight,
    this.onTap,
    required this.isToggled,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    /// The InkWell provides the tap effect for the toggle switch
    return InkWell(
      onTap: onTap,

      /// The container is the background of the toggle switch
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 76,
        height: 36,
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: theme.colorScheme.primary.withAlpha(50)),
        ),

        /// The stack contains the sliding indicator and the icons
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: 2,
              bottom: 2,
              left: isToggled ? 38 : 2,
              right: isToggled ? 2 : 38,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withAlpha(100),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),

            /// The row contains the icons or text widgets
            Row(
              children: [
                Expanded(child: Center(child: iconSunny ?? en)),
                Expanded(child: Center(child: iconNightlight ?? ar)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

