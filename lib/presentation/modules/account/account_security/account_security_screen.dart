import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/components/status_appbar.dart';

import 'account_security_controller.dart';

class AccountSecurityScreen extends BaseScreen<AccountSecurityController> {
  const AccountSecurityScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Use SafeArea to prevent overlap with system status bar
      body: Column(
        children: [
          // Custom Status Bar & AppBar
          StatusBarAppBar(title: "Security"),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  _SectionCard(
                    children: [
                      _SecurityCell(
                        title: 'Password',
                        subtitle: 'Last changed May 28, 2023',
                        trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF4A5763)),
                        obfuscated: true,
                        onTap: () {}, // Add your handler here
                      ),
                      _DividerLine(),
                      _SecurityCell(
                        title: 'Passkeys',
                        subtitle: '3 passkeys created',
                        trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF4A5763)),
                        onTap: () {},
                      ),
                      _DividerLine(),
                      _SecurityCell(
                        title: '2-Step Verification',
                        subtitle: 'Add additional security to your account with 2-step verification.',
                        trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF4A5763)),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Connected social apps
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Connected social apps',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF161A1D),
                        ),
                      ),
                    ),
                  ),
                  _SocialConnectCell(
                    icon: _GoogleIcon(),
                    label: "Google",
                    onDisconnect: () {},
                  ),
                  _SocialConnectCell(
                    icon: _AppleIcon(),
                    label: "Apple",
                    onDisconnect: () {},
                  ),
                  const SizedBox(height: 32),
                  _HomeIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Card-like section (background white)
class _SectionCard extends StatelessWidget {
  final List<Widget> children;
  const _SectionCard({required this.children});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(children: children),
    );
  }
}

/// Security setting row with subtitle and optional trailing widget (arrow)
class _SecurityCell extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool obfuscated;
  final Widget? trailing;
  final VoidCallback? onTap;

  const _SecurityCell({
    required this.title,
    this.subtitle,
    this.obfuscated = false,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: subtitle == null ? 50 : (title == "2-Step Verification" ? 68 : 50),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF161A1D),
                          ),
                        ),
                        if (obfuscated) ...[
                          SizedBox(width: 8),
                          Text("••••••••", style: TextStyle(letterSpacing: 2, fontSize: 18, color: Color(0xFF4A5763))),
                        ]
                      ],
                    ),
                    if (subtitle != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          subtitle!,
                          style: TextStyle(fontSize: 12, color: Color(0xFF4A5763)),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
              if (trailing != null) ...[
                SizedBox(width: 12),
                trailing!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Light divider for section splits
class _DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      width: MediaQuery.of(context).size.width - 48,
      height: 1,
      color: Color(0xFFE8EBEE),
    );
  }
}

/// Social app connect/disconnect cell
class _SocialConnectCell extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback? onDisconnect;

  const _SocialConnectCell({
    required this.icon,
    required this.label,
    this.onDisconnect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: [
          icon,
          SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF161A1D),
              ),
            ),
          ),
          InkWell(
            onTap: onDisconnect,
            child: Text(
              "Disconnect",
              style: TextStyle(
                color: Color(0xFFFF3B30),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Google Icon (SVG)
class _GoogleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/ic_google_icon.svg",
      width: 24,
      height: 24,
    );
  }
}

// Apple Icon (SVG)
class _AppleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/ic_apple_icon.svg",
      width: 24,
      height: 24,
    );
  }
}

// Home Indicator at bottom
class _HomeIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 5,
      margin: EdgeInsets.only(top: 24, bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xFF161A1D),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
