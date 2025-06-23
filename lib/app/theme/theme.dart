// ignore_for_file: overridden_fields, unused_element, non_constant_identifier_names

/// The all getter and classes with variables and functions statics:
/// [AppTextStyles], [Shadows], [ColorStyle], [SixMartTheme], [Typography], [AllColors], [Theme], [BrandColor], [Spacing], [Corner], [FontFamily]
///
///
/// Text Style Documents:
/// * [TextStyle] are represented in an class called [Style].
/// * To access all [Style] statically, you can just access them using the [AppTextStyles] class.
/// * To color a [Style], just use the .tint([Color]) function.
/// * [Style] may or may not have figma variables depending on the design in figma
/// * The attributes exported from figma are [fontFamily], [fontSize], [decoration], [fontStyle], [fontWeight], [height], [letterSpacing]
///
/// Shadow Documents:
/// * ONLY support DROP_SHADOW and INNER_SHADOW.
/// * [BoxShadow] are represented in an class called [Shadow].
/// * To access all [Shadow] statically, you can just access them using the [Shadows}] class.
/// * Shadows may or may not have figma variables depending on the design in figma
/// * The attributes exported from figma are [color], [offset], [blurRadius], [spreadRadius], [blurStyle]
///
/// Color Styles Documents:
/// * Support SOLID COLOR and GRADIENT LINEAR and GRADIENT RADIAL.
/// * To access all [Color] statically, you can just access them using the [ColorStyle}] class.
/// * Colors may or may not have figma variables depending on the design in figma
///
/// *IMPORTANT*: You need a [SixMartTheme] on top of your Material so that colors, sizes, strings, booleans are rebuilt when changed.
///
/// ```dart
///  class MyApp extends StatelessWidget {
///    const MyApp({super.key});
///
///    @override
///    Widget build(BuildContext context) {
///      return const FigmaTheme(
///        child: MaterialApp(
///          title: 'Figma Demo',
///          home: MyHomePage(title: 'Figma Demo Home Page'),
///        ),
///      );
///    }
///  }
/// ```
///
///
/// The variable [Typography] is a getter that fetches the style[TypographyDefault] based on the set `MODE`[TypographyTypes]
/// To change the MODE of [Typography] just use the function [SixMartTheme.TypographyDefault] passing the enum [TypographyTypes]
///
/// [TypographyDefault] is a sealed class that contains all the variables of the collection Typography
/// [_TypographyMode1] is a class that contains all the variables of the collection Typography in the mode Mode 1
///
///
/// The variable [AllColors] is a getter that fetches the style[AllColorsDefault] based on the set `MODE`[AllColorsTypes]
/// To change the MODE of [AllColors] just use the function [SixMartTheme.AllColorsDefault] passing the enum [AllColorsTypes]
///
/// [AllColorsDefault] is a sealed class that contains all the variables of the collection All Colors
/// [_AllColorsMode1] is a class that contains all the variables of the collection All Colors in the mode Mode 1
///
///
/// The variable [Theme] is a getter that fetches the style[ThemeDefault] based on the set `MODE`[ThemeTypes]
/// To change the MODE of [Theme] just use the function [SixMartTheme.ThemeDefault] passing the enum [ThemeTypes]
///
/// [ThemeDefault] is a sealed class that contains all the variables of the collection Theme
/// [_ThemeLight] is a class that contains all the variables of the collection Theme in the mode Light
/// [_ThemeDark] is a class that contains all the variables of the collection Theme in the mode Dark
///
///
/// The variable [BrandColor] is a getter that fetches the style[BrandColorDefault] based on the set `MODE`[BrandColorTypes]
/// To change the MODE of [BrandColor] just use the function [SixMartTheme.BrandColorDefault] passing the enum [BrandColorTypes]
///
/// [BrandColorDefault] is a sealed class that contains all the variables of the collection Brand color
/// [_BrandColorBlue] is a class that contains all the variables of the collection Brand color in the mode Blue
/// [_BrandColorPurple] is a class that contains all the variables of the collection Brand color in the mode Purple
/// [_BrandColorViolet] is a class that contains all the variables of the collection Brand color in the mode Violet
/// [_BrandColorOrange] is a class that contains all the variables of the collection Brand color in the mode Orange
///
///
/// The variable [Spacing] is a getter that fetches the style[SpacingDefault] based on the set `MODE`[SpacingTypes]
/// To change the MODE of [Spacing] just use the function [SixMartTheme.SpacingDefault] passing the enum [SpacingTypes]
///
/// [SpacingDefault] is a sealed class that contains all the variables of the collection Spacing
/// [_SpacingMode1] is a class that contains all the variables of the collection Spacing in the mode Mode 1
///
///
/// The variable [Corner] is a getter that fetches the style[CornerDefault] based on the set `MODE`[CornerTypes]
/// To change the MODE of [Corner] just use the function [SixMartTheme.CornerDefault] passing the enum [CornerTypes]
///
/// [CornerDefault] is a sealed class that contains all the variables of the collection Corner
/// [_CornerClassic] is a class that contains all the variables of the collection Corner in the mode Classic
/// [_CornerSharp] is a class that contains all the variables of the collection Corner in the mode Sharp
///
///
/// The variable [FontFamily] is a getter that fetches the style[FontFamilyDefault] based on the set `MODE`[FontFamilyTypes]
/// To change the MODE of [FontFamily] just use the function [SixMartTheme.FontFamilyDefault] passing the enum [FontFamilyTypes]
///
/// [FontFamilyDefault] is a sealed class that contains all the variables of the collection Font Family
/// [_FontFamilyInter] is a class that contains all the variables of the collection Font Family in the mode Inter
/// [_FontFamilyBarlow] is a class that contains all the variables of the collection Font Family in the mode Barlow
/// [_FontFamilyManrope] is a class that contains all the variables of the collection Font Family in the mode Manrope
/// [_FontFamilyRobotoMono] is a class that contains all the variables of the collection Font Family in the mode Roboto Mono
///
///
library;

import 'dart:ui';

import 'package:flutter/material.dart';

AnimationController? _animationControllerTypographyDefault;
AnimationController? _animationControllerAllColorsDefault;
AnimationController? _animationControllerThemeDefault;
AnimationController? _animationControllerBrandColorDefault;
AnimationController? _animationControllerSpacingDefault;
AnimationController? _animationControllerCornerDefault;
AnimationController? _animationControllerFontFamilyDefault;

class SixMartTheme extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const SixMartTheme({super.key, required this.child, this.duration = const Duration(milliseconds: 300)});

  static TypographyTypes typographytypes = TypographyTypes.mode1;
  static void modifyTypography(TypographyTypes type) {
    typographytypes = type;
    _TypographyLast = _Typography.value;
    _Typography.value = switch (type) {
      TypographyTypes.mode1 => _TypographyMode1._(),
    };
  }

  static AllColorsTypes allcolorstypes = AllColorsTypes.mode1;
  static void modifyAllColors(AllColorsTypes type) {
    allcolorstypes = type;
    _AllColorsLast = _AllColors.value;
    _AllColors.value = switch (type) {
      AllColorsTypes.mode1 => _AllColorsMode1._(),
    };
  }

  static ThemeTypes themetypes = ThemeTypes.light;
  static void modifyTheme(ThemeTypes type) {
    themetypes = type;
    _ThemeLast = _Theme.value;
    _Theme.value = switch (type) {
      ThemeTypes.light => _ThemeLight._(),
      ThemeTypes.dark => _ThemeDark._(),
    };
  }

  static BrandColorTypes brandcolortypes = BrandColorTypes.blue;
  static void modifyBrandColor(BrandColorTypes type) {
    brandcolortypes = type;
    _BrandColorLast = _BrandColor.value;
    _BrandColor.value = switch (type) {
      BrandColorTypes.blue => _BrandColorBlue._(),
      BrandColorTypes.purple => _BrandColorPurple._(),
      BrandColorTypes.violet => _BrandColorViolet._(),
      BrandColorTypes.orange => _BrandColorOrange._(),
    };
  }

  static SpacingTypes spacingtypes = SpacingTypes.mode1;
  static void modifySpacing(SpacingTypes type) {
    spacingtypes = type;
    _SpacingLast = _Spacing.value;
    _Spacing.value = switch (type) {
      SpacingTypes.mode1 => _SpacingMode1._(),
    };
  }

  static CornerTypes cornertypes = CornerTypes.classic;
  static void modifyCorner(CornerTypes type) {
    cornertypes = type;
    _CornerLast = _Corner.value;
    _Corner.value = switch (type) {
      CornerTypes.classic => _CornerClassic._(),
      CornerTypes.sharp => _CornerSharp._(),
    };
  }

  static FontFamilyTypes fontfamilytypes = FontFamilyTypes.inter;
  static void modifyFontFamily(FontFamilyTypes type) {
    fontfamilytypes = type;
    _FontFamilyLast = _FontFamily.value;
    _FontFamily.value = switch (type) {
      FontFamilyTypes.inter => _FontFamilyInter._(),
      FontFamilyTypes.barlow => _FontFamilyBarlow._(),
      FontFamilyTypes.manrope => _FontFamilyManrope._(),
      FontFamilyTypes.robotoMono => _FontFamilyRobotoMono._(),
    };
  }

  @override
  State<SixMartTheme> createState() => _SixMartThemeState();
}

class _SixMartThemeState extends State<SixMartTheme> with TickerProviderStateMixin {
  void _rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  void initState() {
    super.initState();
    _animationControllerTypographyDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerAllColorsDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerThemeDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerBrandColorDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerSpacingDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerCornerDefault = AnimationController(vsync: this, duration: widget.duration);
    _animationControllerFontFamilyDefault = AnimationController(vsync: this, duration: widget.duration);
    _Typography.addListener(() {
      _animationControllerTypographyDefault?.forward(from: 0);
    });
    _AllColors.addListener(() {
      _animationControllerAllColorsDefault?.forward(from: 0);
    });
    _Theme.addListener(() {
      _animationControllerThemeDefault?.forward(from: 0);
    });
    _BrandColor.addListener(() {
      _animationControllerBrandColorDefault?.forward(from: 0);
    });
    _Spacing.addListener(() {
      _animationControllerSpacingDefault?.forward(from: 0);
    });
    _Corner.addListener(() {
      _animationControllerCornerDefault?.forward(from: 0);
    });
    _FontFamily.addListener(() {
      _animationControllerFontFamilyDefault?.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        _animationControllerTypographyDefault,
        _animationControllerAllColorsDefault,
        _animationControllerThemeDefault,
        _animationControllerBrandColorDefault,
        _animationControllerSpacingDefault,
        _animationControllerCornerDefault,
        _animationControllerFontFamilyDefault,
      ]),
      builder: (context, _) {
        _rebuildAllChildren(context);
        return widget.child;
      },
    );
  }
}

ValueNotifier<TypographyDefault> _Typography = ValueNotifier(_TypographyMode1._());
TypographyDefault _TypographyLast = _TypographyMode1._();

enum TypographyTypes { mode1 }

TypographyDefault get Typography {
  if (_animationControllerTypographyDefault?.isAnimating ?? false) {
    return TypographyDefault._lerpResolve(_Typography.value, _TypographyLast, _animationControllerTypographyDefault?.value ?? 1);
  }
  return _Typography.value;
}

ValueNotifier<AllColorsDefault> _AllColors = ValueNotifier(_AllColorsMode1._());
AllColorsDefault _AllColorsLast = _AllColorsMode1._();

enum AllColorsTypes { mode1 }

AllColorsDefault get AllColors {
  if (_animationControllerAllColorsDefault?.isAnimating ?? false) {
    return AllColorsDefault._lerpResolve(_AllColors.value, _AllColorsLast, _animationControllerAllColorsDefault?.value ?? 1);
  }
  return _AllColors.value;
}

ValueNotifier<ThemeDefault> _Theme = ValueNotifier(_ThemeLight._());
ThemeDefault _ThemeLast = _ThemeLight._();

enum ThemeTypes { light, dark }

ThemeDefault get Theme {
  if (_animationControllerThemeDefault?.isAnimating ?? false) {
    return ThemeDefault._lerpResolve(_Theme.value, _ThemeLast, _animationControllerThemeDefault?.value ?? 1);
  }
  return _Theme.value;
}

ValueNotifier<BrandColorDefault> _BrandColor = ValueNotifier(_BrandColorBlue._());
BrandColorDefault _BrandColorLast = _BrandColorBlue._();

enum BrandColorTypes { blue, purple, violet, orange }

BrandColorDefault get BrandColor {
  if (_animationControllerBrandColorDefault?.isAnimating ?? false) {
    return BrandColorDefault._lerpResolve(_BrandColor.value, _BrandColorLast, _animationControllerBrandColorDefault?.value ?? 1);
  }
  return _BrandColor.value;
}

ValueNotifier<SpacingDefault> _Spacing = ValueNotifier(_SpacingMode1._());
SpacingDefault _SpacingLast = _SpacingMode1._();

enum SpacingTypes { mode1 }

SpacingDefault get Spacing {
  if (_animationControllerSpacingDefault?.isAnimating ?? false) {
    return SpacingDefault._lerpResolve(_Spacing.value, _SpacingLast, _animationControllerSpacingDefault?.value ?? 1);
  }
  return _Spacing.value;
}

ValueNotifier<CornerDefault> _Corner = ValueNotifier(_CornerClassic._());
CornerDefault _CornerLast = _CornerClassic._();

enum CornerTypes { classic, sharp }

CornerDefault get Corner {
  if (_animationControllerCornerDefault?.isAnimating ?? false) {
    return CornerDefault._lerpResolve(_Corner.value, _CornerLast, _animationControllerCornerDefault?.value ?? 1);
  }
  return _Corner.value;
}

ValueNotifier<FontFamilyDefault> _FontFamily = ValueNotifier(_FontFamilyInter._());
FontFamilyDefault _FontFamilyLast = _FontFamilyInter._();

enum FontFamilyTypes { inter, barlow, manrope, robotoMono }

FontFamilyDefault get FontFamily {
  if (_animationControllerFontFamilyDefault?.isAnimating ?? false) {
    return FontFamilyDefault._lerpResolve(_FontFamily.value, _FontFamilyLast, _animationControllerFontFamilyDefault?.value ?? 1);
  }
  return _FontFamily.value;
}

class TypographyDefault {
  TypographyDefault._();
  TypographyDefault._lerp({
    required this.fontFamilyFont,
    required this.fontWeightRegular400,
    required this.fontWeightMedium500,
    required this.fontWeightSemiBold600,
    required this.fontWeightBold700,
    required this.fontSizeH1,
    required this.fontSizeH2,
    required this.fontSizeH3,
    required this.fontSizeH4,
    required this.fontSizeH5,
    required this.fontSizeH6,
    required this.fontSizeH7,
    required this.fontSizeH8,
    required this.fontSizeH9,
    required this.fontSizeH10,
    required this.fontSizeH11,
    required this.fontSizeH12,
    required this.fontLineHeightH1,
    required this.fontLineHeightH2,
    required this.fontLineHeightH3,
    required this.fontLineHeightH4,
    required this.fontLineHeightH5,
    required this.fontLineHeightH6,
    required this.fontLineHeightH7,
    required this.fontLineHeightH8,
    required this.fontLineHeightH9,
    required this.fontLineHeightH10,
    required this.fontLineHeightH11,
    required this.fontLineHeightH12,
  });
  late final String fontFamilyFont;
  late final String fontWeightRegular400;
  late final String fontWeightMedium500;
  late final String fontWeightSemiBold600;
  late final String fontWeightBold700;
  late final double fontSizeH1;
  late final double fontSizeH2;
  late final double fontSizeH3;
  late final double fontSizeH4;
  late final double fontSizeH5;
  late final double fontSizeH6;
  late final double fontSizeH7;
  late final double fontSizeH8;
  late final double fontSizeH9;
  late final double fontSizeH10;
  late final double fontSizeH11;
  late final double fontSizeH12;
  late final double fontLineHeightH1;
  late final double fontLineHeightH2;
  late final double fontLineHeightH3;
  late final double fontLineHeightH4;
  late final double fontLineHeightH5;
  late final double fontLineHeightH6;
  late final double fontLineHeightH7;
  late final double fontLineHeightH8;
  late final double fontLineHeightH9;
  late final double fontLineHeightH10;
  late final double fontLineHeightH11;
  late final double fontLineHeightH12;
  static TypographyDefault _lerpResolve(TypographyDefault a, TypographyDefault b, double t) {
    return TypographyDefault._lerp(
      fontFamilyFont: b.fontFamilyFont._lerp(a.fontFamilyFont, t),
      fontWeightRegular400: b.fontWeightRegular400._lerp(a.fontWeightRegular400, t),
      fontWeightMedium500: b.fontWeightMedium500._lerp(a.fontWeightMedium500, t),
      fontWeightSemiBold600: b.fontWeightSemiBold600._lerp(a.fontWeightSemiBold600, t),
      fontWeightBold700: b.fontWeightBold700._lerp(a.fontWeightBold700, t),
      fontSizeH1: b.fontSizeH1._lerp(a.fontSizeH1, t),
      fontSizeH2: b.fontSizeH2._lerp(a.fontSizeH2, t),
      fontSizeH3: b.fontSizeH3._lerp(a.fontSizeH3, t),
      fontSizeH4: b.fontSizeH4._lerp(a.fontSizeH4, t),
      fontSizeH5: b.fontSizeH5._lerp(a.fontSizeH5, t),
      fontSizeH6: b.fontSizeH6._lerp(a.fontSizeH6, t),
      fontSizeH7: b.fontSizeH7._lerp(a.fontSizeH7, t),
      fontSizeH8: b.fontSizeH8._lerp(a.fontSizeH8, t),
      fontSizeH9: b.fontSizeH9._lerp(a.fontSizeH9, t),
      fontSizeH10: b.fontSizeH10._lerp(a.fontSizeH10, t),
      fontSizeH11: b.fontSizeH11._lerp(a.fontSizeH11, t),
      fontSizeH12: b.fontSizeH12._lerp(a.fontSizeH12, t),
      fontLineHeightH1: b.fontLineHeightH1._lerp(a.fontLineHeightH1, t),
      fontLineHeightH2: b.fontLineHeightH2._lerp(a.fontLineHeightH2, t),
      fontLineHeightH3: b.fontLineHeightH3._lerp(a.fontLineHeightH3, t),
      fontLineHeightH4: b.fontLineHeightH4._lerp(a.fontLineHeightH4, t),
      fontLineHeightH5: b.fontLineHeightH5._lerp(a.fontLineHeightH5, t),
      fontLineHeightH6: b.fontLineHeightH6._lerp(a.fontLineHeightH6, t),
      fontLineHeightH7: b.fontLineHeightH7._lerp(a.fontLineHeightH7, t),
      fontLineHeightH8: b.fontLineHeightH8._lerp(a.fontLineHeightH8, t),
      fontLineHeightH9: b.fontLineHeightH9._lerp(a.fontLineHeightH9, t),
      fontLineHeightH10: b.fontLineHeightH10._lerp(a.fontLineHeightH10, t),
      fontLineHeightH11: b.fontLineHeightH11._lerp(a.fontLineHeightH11, t),
      fontLineHeightH12: b.fontLineHeightH12._lerp(a.fontLineHeightH12, t),
    );
  }
}

class _TypographyMode1 extends TypographyDefault {
  _TypographyMode1._() : super._();
  @override
  String get fontFamilyFont => FontFamily.fonts;
  @override
  String get fontWeightRegular400 => "Regular";
  @override
  String get fontWeightMedium500 => "Medium";
  @override
  String get fontWeightSemiBold600 => "Semi Bold";
  @override
  String get fontWeightBold700 => "Bold";
  @override
  double get fontSizeH1 => 72;
  @override
  double get fontSizeH2 => 56;
  @override
  double get fontSizeH3 => 48;
  @override
  double get fontSizeH4 => 36;
  @override
  double get fontSizeH5 => 32;
  @override
  double get fontSizeH6 => 28;
  @override
  double get fontSizeH7 => 24;
  @override
  double get fontSizeH8 => 20;
  @override
  double get fontSizeH9 => 18;
  @override
  double get fontSizeH10 => 16;
  @override
  double get fontSizeH11 => 14;
  @override
  double get fontSizeH12 => 12;
  @override
  double get fontLineHeightH1 => 90;
  @override
  double get fontLineHeightH2 => 72;
  @override
  double get fontLineHeightH3 => 60;
  @override
  double get fontLineHeightH4 => 44;
  @override
  double get fontLineHeightH5 => 40;
  @override
  double get fontLineHeightH6 => 36;
  @override
  double get fontLineHeightH7 => 32;
  @override
  double get fontLineHeightH8 => 30;
  @override
  double get fontLineHeightH9 => 28;
  @override
  double get fontLineHeightH10 => 24;
  @override
  double get fontLineHeightH11 => 20;
  @override
  double get fontLineHeightH12 => 18;
}

class AllColorsDefault {
  AllColorsDefault._();
  AllColorsDefault._lerp({
    required this.red950,
    required this.red900,
    required this.red800,
    required this.red700,
    required this.red600,
    required this.red500,
    required this.red400,
    required this.red300,
    required this.red200,
    required this.red100,
    required this.red50,
    required this.orange950,
    required this.orange900,
    required this.orange800,
    required this.orange700,
    required this.orange600,
    required this.orange500,
    required this.orange400,
    required this.orange300,
    required this.orange200,
    required this.orange100,
    required this.orange50,
    required this.yellow950,
    required this.yellow900,
    required this.yellow800,
    required this.yellow700,
    required this.yellow600,
    required this.yellow500,
    required this.yellow400,
    required this.yellow300,
    required this.yellow200,
    required this.yellow100,
    required this.yellow50,
    required this.green950,
    required this.green900,
    required this.green800,
    required this.green700,
    required this.green600,
    required this.green500,
    required this.green400,
    required this.green300,
    required this.green200,
    required this.green100,
    required this.green50,
    required this.teal950,
    required this.teal900,
    required this.teal800,
    required this.teal700,
    required this.teal600,
    required this.teal500,
    required this.teal400,
    required this.teal300,
    required this.teal200,
    required this.teal100,
    required this.teal50,
    required this.blue950,
    required this.blue900,
    required this.blue800,
    required this.blue700,
    required this.blue600,
    required this.blue500,
    required this.blue400,
    required this.blue300,
    required this.blue200,
    required this.blue100,
    required this.blue50,
    required this.purple950,
    required this.purple900,
    required this.purple800,
    required this.purple700,
    required this.purple600,
    required this.purple500,
    required this.purple400,
    required this.purple300,
    required this.purple200,
    required this.purple100,
    required this.purple50,
    required this.violet950,
    required this.violet900,
    required this.violet800,
    required this.violet700,
    required this.violet600,
    required this.violet500,
    required this.violet400,
    required this.violet300,
    required this.violet200,
    required this.violet100,
    required this.violet50,
    required this.pink950,
    required this.pink900,
    required this.pink800,
    required this.pink700,
    required this.pink600,
    required this.pink500,
    required this.pink400,
    required this.pink300,
    required this.pink200,
    required this.pink100,
    required this.pink50,
    required this.greyLight950,
    required this.greyLight900,
    required this.greyLight800,
    required this.greyLight700,
    required this.greyLight600,
    required this.greyLight500,
    required this.greyLight400,
    required this.greyLight300,
    required this.greyLight200,
    required this.greyLight100,
    required this.greyLight50,
    required this.greyDark950,
    required this.greyDark900,
    required this.greyDark800,
    required this.greyDark700,
    required this.greyDark600,
    required this.greyDark500,
    required this.greyDark400,
    required this.greyDark300,
    required this.greyDark200,
    required this.greyDark100,
    required this.greyDark50,
    required this.baseBlack,
    required this.baseWhite,
    required this.alphaWhite100,
    required this.alphaWhite90,
    required this.alphaWhite80,
    required this.alphaWhite70,
    required this.alphaWhite60,
    required this.alphaWhite50,
    required this.alphaWhite40,
    required this.alphaWhite30,
    required this.alphaWhite20,
    required this.alphaWhite10,
    required this.alphaWhite5,
    required this.alphaGrey100,
    required this.alphaGrey90,
    required this.alphaGrey80,
    required this.alphaGrey70,
    required this.alphaGrey60,
    required this.alphaGrey50,
    required this.alphaGrey40,
    required this.alphaGrey30,
    required this.alphaGrey20,
    required this.alphaGrey10,
    required this.alphaGrey5,
  });
  late final Color red950;
  late final Color red900;
  late final Color red800;
  late final Color red700;
  late final Color red600;
  late final Color red500;
  late final Color red400;
  late final Color red300;
  late final Color red200;
  late final Color red100;
  late final Color red50;
  late final Color orange950;
  late final Color orange900;
  late final Color orange800;
  late final Color orange700;
  late final Color orange600;
  late final Color orange500;
  late final Color orange400;
  late final Color orange300;
  late final Color orange200;
  late final Color orange100;
  late final Color orange50;
  late final Color yellow950;
  late final Color yellow900;
  late final Color yellow800;
  late final Color yellow700;
  late final Color yellow600;
  late final Color yellow500;
  late final Color yellow400;
  late final Color yellow300;
  late final Color yellow200;
  late final Color yellow100;
  late final Color yellow50;
  late final Color green950;
  late final Color green900;
  late final Color green800;
  late final Color green700;
  late final Color green600;
  late final Color green500;
  late final Color green400;
  late final Color green300;
  late final Color green200;
  late final Color green100;
  late final Color green50;
  late final Color teal950;
  late final Color teal900;
  late final Color teal800;
  late final Color teal700;
  late final Color teal600;
  late final Color teal500;
  late final Color teal400;
  late final Color teal300;
  late final Color teal200;
  late final Color teal100;
  late final Color teal50;
  late final Color blue950;
  late final Color blue900;
  late final Color blue800;
  late final Color blue700;
  late final Color blue600;
  late final Color blue500;
  late final Color blue400;
  late final Color blue300;
  late final Color blue200;
  late final Color blue100;
  late final Color blue50;
  late final Color purple950;
  late final Color purple900;
  late final Color purple800;
  late final Color purple700;
  late final Color purple600;
  late final Color purple500;
  late final Color purple400;
  late final Color purple300;
  late final Color purple200;
  late final Color purple100;
  late final Color purple50;
  late final Color violet950;
  late final Color violet900;
  late final Color violet800;
  late final Color violet700;
  late final Color violet600;
  late final Color violet500;
  late final Color violet400;
  late final Color violet300;
  late final Color violet200;
  late final Color violet100;
  late final Color violet50;
  late final Color pink950;
  late final Color pink900;
  late final Color pink800;
  late final Color pink700;
  late final Color pink600;
  late final Color pink500;
  late final Color pink400;
  late final Color pink300;
  late final Color pink200;
  late final Color pink100;
  late final Color pink50;
  late final Color greyLight950;
  late final Color greyLight900;
  late final Color greyLight800;
  late final Color greyLight700;
  late final Color greyLight600;
  late final Color greyLight500;
  late final Color greyLight400;
  late final Color greyLight300;
  late final Color greyLight200;
  late final Color greyLight100;
  late final Color greyLight50;
  late final Color greyDark950;
  late final Color greyDark900;
  late final Color greyDark800;
  late final Color greyDark700;
  late final Color greyDark600;
  late final Color greyDark500;
  late final Color greyDark400;
  late final Color greyDark300;
  late final Color greyDark200;
  late final Color greyDark100;
  late final Color greyDark50;
  late final Color baseBlack;
  late final Color baseWhite;
  late final Color alphaWhite100;
  late final Color alphaWhite90;
  late final Color alphaWhite80;
  late final Color alphaWhite70;
  late final Color alphaWhite60;
  late final Color alphaWhite50;
  late final Color alphaWhite40;
  late final Color alphaWhite30;
  late final Color alphaWhite20;
  late final Color alphaWhite10;
  late final Color alphaWhite5;
  late final Color alphaGrey100;
  late final Color alphaGrey90;
  late final Color alphaGrey80;
  late final Color alphaGrey70;
  late final Color alphaGrey60;
  late final Color alphaGrey50;
  late final Color alphaGrey40;
  late final Color alphaGrey30;
  late final Color alphaGrey20;
  late final Color alphaGrey10;
  late final Color alphaGrey5;
  static AllColorsDefault _lerpResolve(AllColorsDefault a, AllColorsDefault b, double t) {
    return AllColorsDefault._lerp(
      red950: b.red950._lerp(a.red950, t),
      red900: b.red900._lerp(a.red900, t),
      red800: b.red800._lerp(a.red800, t),
      red700: b.red700._lerp(a.red700, t),
      red600: b.red600._lerp(a.red600, t),
      red500: b.red500._lerp(a.red500, t),
      red400: b.red400._lerp(a.red400, t),
      red300: b.red300._lerp(a.red300, t),
      red200: b.red200._lerp(a.red200, t),
      red100: b.red100._lerp(a.red100, t),
      red50: b.red50._lerp(a.red50, t),
      orange950: b.orange950._lerp(a.orange950, t),
      orange900: b.orange900._lerp(a.orange900, t),
      orange800: b.orange800._lerp(a.orange800, t),
      orange700: b.orange700._lerp(a.orange700, t),
      orange600: b.orange600._lerp(a.orange600, t),
      orange500: b.orange500._lerp(a.orange500, t),
      orange400: b.orange400._lerp(a.orange400, t),
      orange300: b.orange300._lerp(a.orange300, t),
      orange200: b.orange200._lerp(a.orange200, t),
      orange100: b.orange100._lerp(a.orange100, t),
      orange50: b.orange50._lerp(a.orange50, t),
      yellow950: b.yellow950._lerp(a.yellow950, t),
      yellow900: b.yellow900._lerp(a.yellow900, t),
      yellow800: b.yellow800._lerp(a.yellow800, t),
      yellow700: b.yellow700._lerp(a.yellow700, t),
      yellow600: b.yellow600._lerp(a.yellow600, t),
      yellow500: b.yellow500._lerp(a.yellow500, t),
      yellow400: b.yellow400._lerp(a.yellow400, t),
      yellow300: b.yellow300._lerp(a.yellow300, t),
      yellow200: b.yellow200._lerp(a.yellow200, t),
      yellow100: b.yellow100._lerp(a.yellow100, t),
      yellow50: b.yellow50._lerp(a.yellow50, t),
      green950: b.green950._lerp(a.green950, t),
      green900: b.green900._lerp(a.green900, t),
      green800: b.green800._lerp(a.green800, t),
      green700: b.green700._lerp(a.green700, t),
      green600: b.green600._lerp(a.green600, t),
      green500: b.green500._lerp(a.green500, t),
      green400: b.green400._lerp(a.green400, t),
      green300: b.green300._lerp(a.green300, t),
      green200: b.green200._lerp(a.green200, t),
      green100: b.green100._lerp(a.green100, t),
      green50: b.green50._lerp(a.green50, t),
      teal950: b.teal950._lerp(a.teal950, t),
      teal900: b.teal900._lerp(a.teal900, t),
      teal800: b.teal800._lerp(a.teal800, t),
      teal700: b.teal700._lerp(a.teal700, t),
      teal600: b.teal600._lerp(a.teal600, t),
      teal500: b.teal500._lerp(a.teal500, t),
      teal400: b.teal400._lerp(a.teal400, t),
      teal300: b.teal300._lerp(a.teal300, t),
      teal200: b.teal200._lerp(a.teal200, t),
      teal100: b.teal100._lerp(a.teal100, t),
      teal50: b.teal50._lerp(a.teal50, t),
      blue950: b.blue950._lerp(a.blue950, t),
      blue900: b.blue900._lerp(a.blue900, t),
      blue800: b.blue800._lerp(a.blue800, t),
      blue700: b.blue700._lerp(a.blue700, t),
      blue600: b.blue600._lerp(a.blue600, t),
      blue500: b.blue500._lerp(a.blue500, t),
      blue400: b.blue400._lerp(a.blue400, t),
      blue300: b.blue300._lerp(a.blue300, t),
      blue200: b.blue200._lerp(a.blue200, t),
      blue100: b.blue100._lerp(a.blue100, t),
      blue50: b.blue50._lerp(a.blue50, t),
      purple950: b.purple950._lerp(a.purple950, t),
      purple900: b.purple900._lerp(a.purple900, t),
      purple800: b.purple800._lerp(a.purple800, t),
      purple700: b.purple700._lerp(a.purple700, t),
      purple600: b.purple600._lerp(a.purple600, t),
      purple500: b.purple500._lerp(a.purple500, t),
      purple400: b.purple400._lerp(a.purple400, t),
      purple300: b.purple300._lerp(a.purple300, t),
      purple200: b.purple200._lerp(a.purple200, t),
      purple100: b.purple100._lerp(a.purple100, t),
      purple50: b.purple50._lerp(a.purple50, t),
      violet950: b.violet950._lerp(a.violet950, t),
      violet900: b.violet900._lerp(a.violet900, t),
      violet800: b.violet800._lerp(a.violet800, t),
      violet700: b.violet700._lerp(a.violet700, t),
      violet600: b.violet600._lerp(a.violet600, t),
      violet500: b.violet500._lerp(a.violet500, t),
      violet400: b.violet400._lerp(a.violet400, t),
      violet300: b.violet300._lerp(a.violet300, t),
      violet200: b.violet200._lerp(a.violet200, t),
      violet100: b.violet100._lerp(a.violet100, t),
      violet50: b.violet50._lerp(a.violet50, t),
      pink950: b.pink950._lerp(a.pink950, t),
      pink900: b.pink900._lerp(a.pink900, t),
      pink800: b.pink800._lerp(a.pink800, t),
      pink700: b.pink700._lerp(a.pink700, t),
      pink600: b.pink600._lerp(a.pink600, t),
      pink500: b.pink500._lerp(a.pink500, t),
      pink400: b.pink400._lerp(a.pink400, t),
      pink300: b.pink300._lerp(a.pink300, t),
      pink200: b.pink200._lerp(a.pink200, t),
      pink100: b.pink100._lerp(a.pink100, t),
      pink50: b.pink50._lerp(a.pink50, t),
      greyLight950: b.greyLight950._lerp(a.greyLight950, t),
      greyLight900: b.greyLight900._lerp(a.greyLight900, t),
      greyLight800: b.greyLight800._lerp(a.greyLight800, t),
      greyLight700: b.greyLight700._lerp(a.greyLight700, t),
      greyLight600: b.greyLight600._lerp(a.greyLight600, t),
      greyLight500: b.greyLight500._lerp(a.greyLight500, t),
      greyLight400: b.greyLight400._lerp(a.greyLight400, t),
      greyLight300: b.greyLight300._lerp(a.greyLight300, t),
      greyLight200: b.greyLight200._lerp(a.greyLight200, t),
      greyLight100: b.greyLight100._lerp(a.greyLight100, t),
      greyLight50: b.greyLight50._lerp(a.greyLight50, t),
      greyDark950: b.greyDark950._lerp(a.greyDark950, t),
      greyDark900: b.greyDark900._lerp(a.greyDark900, t),
      greyDark800: b.greyDark800._lerp(a.greyDark800, t),
      greyDark700: b.greyDark700._lerp(a.greyDark700, t),
      greyDark600: b.greyDark600._lerp(a.greyDark600, t),
      greyDark500: b.greyDark500._lerp(a.greyDark500, t),
      greyDark400: b.greyDark400._lerp(a.greyDark400, t),
      greyDark300: b.greyDark300._lerp(a.greyDark300, t),
      greyDark200: b.greyDark200._lerp(a.greyDark200, t),
      greyDark100: b.greyDark100._lerp(a.greyDark100, t),
      greyDark50: b.greyDark50._lerp(a.greyDark50, t),
      baseBlack: b.baseBlack._lerp(a.baseBlack, t),
      baseWhite: b.baseWhite._lerp(a.baseWhite, t),
      alphaWhite100: b.alphaWhite100._lerp(a.alphaWhite100, t),
      alphaWhite90: b.alphaWhite90._lerp(a.alphaWhite90, t),
      alphaWhite80: b.alphaWhite80._lerp(a.alphaWhite80, t),
      alphaWhite70: b.alphaWhite70._lerp(a.alphaWhite70, t),
      alphaWhite60: b.alphaWhite60._lerp(a.alphaWhite60, t),
      alphaWhite50: b.alphaWhite50._lerp(a.alphaWhite50, t),
      alphaWhite40: b.alphaWhite40._lerp(a.alphaWhite40, t),
      alphaWhite30: b.alphaWhite30._lerp(a.alphaWhite30, t),
      alphaWhite20: b.alphaWhite20._lerp(a.alphaWhite20, t),
      alphaWhite10: b.alphaWhite10._lerp(a.alphaWhite10, t),
      alphaWhite5: b.alphaWhite5._lerp(a.alphaWhite5, t),
      alphaGrey100: b.alphaGrey100._lerp(a.alphaGrey100, t),
      alphaGrey90: b.alphaGrey90._lerp(a.alphaGrey90, t),
      alphaGrey80: b.alphaGrey80._lerp(a.alphaGrey80, t),
      alphaGrey70: b.alphaGrey70._lerp(a.alphaGrey70, t),
      alphaGrey60: b.alphaGrey60._lerp(a.alphaGrey60, t),
      alphaGrey50: b.alphaGrey50._lerp(a.alphaGrey50, t),
      alphaGrey40: b.alphaGrey40._lerp(a.alphaGrey40, t),
      alphaGrey30: b.alphaGrey30._lerp(a.alphaGrey30, t),
      alphaGrey20: b.alphaGrey20._lerp(a.alphaGrey20, t),
      alphaGrey10: b.alphaGrey10._lerp(a.alphaGrey10, t),
      alphaGrey5: b.alphaGrey5._lerp(a.alphaGrey5, t),
    );
  }
}

class _AllColorsMode1 extends AllColorsDefault {
  _AllColorsMode1._() : super._();
  @override
  Color get red950 => const Color.fromARGB(255, 31, 2, 0);
  @override
  Color get red900 => const Color.fromARGB(255, 61, 3, 0);
  @override
  Color get red800 => const Color.fromARGB(255, 122, 6, 0);
  @override
  Color get red700 => const Color.fromARGB(255, 184, 9, 0);
  @override
  Color get red600 => const Color.fromARGB(255, 245, 12, 0);
  @override
  Color get red500 => const Color.fromARGB(255, 255, 59, 48);
  @override
  Color get red400 => const Color.fromARGB(255, 255, 100, 92);
  @override
  Color get red300 => const Color.fromARGB(255, 255, 139, 133);
  @override
  Color get red200 => const Color.fromARGB(255, 255, 177, 173);
  @override
  Color get red100 => const Color.fromARGB(255, 255, 216, 214);
  @override
  Color get red50 => const Color.fromARGB(255, 255, 236, 235);
  @override
  Color get orange950 => const Color.fromARGB(255, 25, 15, 0);
  @override
  Color get orange900 => const Color.fromARGB(255, 51, 30, 0);
  @override
  Color get orange800 => const Color.fromARGB(255, 102, 60, 0);
  @override
  Color get orange700 => const Color.fromARGB(255, 153, 89, 0);
  @override
  Color get orange600 => const Color.fromARGB(255, 204, 119, 0);
  @override
  Color get orange500 => const Color.fromARGB(255, 255, 149, 0);
  @override
  Color get orange400 => const Color.fromARGB(255, 255, 170, 51);
  @override
  Color get orange300 => const Color.fromARGB(255, 255, 191, 102);
  @override
  Color get orange200 => const Color.fromARGB(255, 255, 213, 153);
  @override
  Color get orange100 => const Color.fromARGB(255, 255, 234, 204);
  @override
  Color get orange50 => const Color.fromARGB(255, 255, 244, 229);
  @override
  Color get yellow950 => const Color.fromARGB(255, 25, 20, 0);
  @override
  Color get yellow900 => const Color.fromARGB(255, 51, 41, 0);
  @override
  Color get yellow800 => const Color.fromARGB(255, 102, 82, 0);
  @override
  Color get yellow700 => const Color.fromARGB(255, 153, 122, 0);
  @override
  Color get yellow600 => const Color.fromARGB(255, 204, 163, 0);
  @override
  Color get yellow500 => const Color.fromARGB(255, 255, 204, 2);
  @override
  Color get yellow400 => const Color.fromARGB(255, 255, 214, 51);
  @override
  Color get yellow300 => const Color.fromARGB(255, 255, 224, 102);
  @override
  Color get yellow200 => const Color.fromARGB(255, 255, 235, 153);
  @override
  Color get yellow100 => const Color.fromARGB(255, 255, 245, 204);
  @override
  Color get yellow50 => const Color.fromARGB(255, 255, 250, 229);
  @override
  Color get green950 => const Color.fromARGB(255, 4, 21, 7);
  @override
  Color get green900 => const Color.fromARGB(255, 8, 43, 13);
  @override
  Color get green800 => const Color.fromARGB(255, 16, 81, 25);
  @override
  Color get green700 => const Color.fromARGB(255, 24, 124, 39);
  @override
  Color get green600 => const Color.fromARGB(255, 31, 163, 51);
  @override
  Color get green500 => const Color.fromARGB(255, 39, 205, 65);
  @override
  Color get green400 => const Color.fromARGB(255, 75, 221, 97);
  @override
  Color get green300 => const Color.fromARGB(255, 122, 230, 138);
  @override
  Color get green200 => const Color.fromARGB(255, 165, 238, 176);
  @override
  Color get green100 => const Color.fromARGB(255, 212, 247, 217);
  @override
  Color get green50 => const Color.fromARGB(255, 234, 251, 236);
  @override
  Color get teal950 => const Color.fromARGB(255, 4, 14, 17);
  @override
  Color get teal900 => const Color.fromARGB(255, 8, 30, 38);
  @override
  Color get teal800 => const Color.fromARGB(255, 16, 61, 76);
  @override
  Color get teal700 => const Color.fromARGB(255, 24, 91, 114);
  @override
  Color get teal600 => const Color.fromARGB(255, 32, 122, 152);
  @override
  Color get teal500 => const Color.fromARGB(255, 40, 152, 189);
  @override
  Color get teal400 => const Color.fromARGB(255, 70, 179, 216);
  @override
  Color get teal300 => const Color.fromARGB(255, 116, 198, 226);
  @override
  Color get teal200 => const Color.fromARGB(255, 162, 217, 235);
  @override
  Color get teal100 => const Color.fromARGB(255, 209, 236, 245);
  @override
  Color get teal50 => const Color.fromARGB(255, 230, 245, 250);
  @override
  Color get blue950 => const Color.fromARGB(255, 0, 12, 25);
  @override
  Color get blue900 => const Color.fromARGB(255, 0, 25, 51);
  @override
  Color get blue800 => const Color.fromARGB(255, 0, 49, 102);
  @override
  Color get blue700 => const Color.fromARGB(255, 0, 74, 153);
  @override
  Color get blue600 => const Color.fromARGB(255, 0, 99, 204);
  @override
  Color get blue500 => const Color.fromARGB(255, 0, 122, 255);
  @override
  Color get blue400 => const Color.fromARGB(255, 51, 150, 255);
  @override
  Color get blue300 => const Color.fromARGB(255, 102, 176, 255);
  @override
  Color get blue200 => const Color.fromARGB(255, 153, 202, 255);
  @override
  Color get blue100 => const Color.fromARGB(255, 204, 229, 255);
  @override
  Color get blue50 => const Color.fromARGB(255, 229, 242, 255);
  @override
  Color get purple950 => const Color.fromARGB(255, 6, 6, 25);
  @override
  Color get purple900 => const Color.fromARGB(255, 12, 12, 49);
  @override
  Color get purple800 => const Color.fromARGB(255, 25, 23, 99);
  @override
  Color get purple700 => const Color.fromARGB(255, 36, 34, 144);
  @override
  Color get purple600 => const Color.fromARGB(255, 48, 46, 194);
  @override
  Color get purple500 => const Color.fromARGB(255, 88, 86, 215);
  @override
  Color get purple400 => const Color.fromARGB(255, 121, 119, 223);
  @override
  Color get purple300 => const Color.fromARGB(255, 153, 152, 231);
  @override
  Color get purple200 => const Color.fromARGB(255, 190, 189, 239);
  @override
  Color get purple100 => const Color.fromARGB(255, 222, 222, 247);
  @override
  Color get purple50 => const Color.fromARGB(255, 239, 239, 251);
  @override
  Color get violet950 => const Color.fromARGB(255, 19, 5, 26);
  @override
  Color get violet900 => const Color.fromARGB(255, 38, 10, 51);
  @override
  Color get violet800 => const Color.fromARGB(255, 75, 20, 103);
  @override
  Color get violet700 => const Color.fromARGB(255, 113, 29, 154);
  @override
  Color get violet600 => const Color.fromARGB(255, 150, 39, 206);
  @override
  Color get violet500 => const Color.fromARGB(255, 175, 82, 222);
  @override
  Color get violet400 => const Color.fromARGB(255, 192, 118, 229);
  @override
  Color get violet300 => const Color.fromARGB(255, 208, 152, 235);
  @override
  Color get violet200 => const Color.fromARGB(255, 223, 186, 242);
  @override
  Color get violet100 => const Color.fromARGB(255, 239, 221, 248);
  @override
  Color get violet50 => const Color.fromARGB(255, 247, 238, 252);
  @override
  Color get pink950 => const Color.fromARGB(255, 30, 1, 15);
  @override
  Color get pink900 => const Color.fromARGB(255, 65, 1, 33);
  @override
  Color get pink800 => const Color.fromARGB(255, 125, 3, 64);
  @override
  Color get pink700 => const Color.fromARGB(255, 190, 4, 97);
  @override
  Color get pink600 => const Color.fromARGB(255, 250, 5, 128);
  @override
  Color get pink500 => const Color.fromARGB(255, 251, 70, 161);
  @override
  Color get pink400 => const Color.fromARGB(255, 252, 105, 179);
  @override
  Color get pink300 => const Color.fromARGB(255, 253, 140, 196);
  @override
  Color get pink200 => const Color.fromARGB(255, 253, 180, 217);
  @override
  Color get pink100 => const Color.fromARGB(255, 254, 215, 235);
  @override
  Color get pink50 => const Color.fromARGB(255, 254, 230, 242);
  @override
  Color get greyLight950 => const Color.fromARGB(255, 22, 26, 29);
  @override
  Color get greyLight900 => const Color.fromARGB(255, 33, 38, 44);
  @override
  Color get greyLight800 => const Color.fromARGB(255, 52, 61, 70);
  @override
  Color get greyLight700 => const Color.fromARGB(255, 74, 87, 99);
  @override
  Color get greyLight600 => const Color.fromARGB(255, 96, 112, 128);
  @override
  Color get greyLight500 => const Color.fromARGB(255, 121, 138, 154);
  @override
  Color get greyLight400 => const Color.fromARGB(255, 147, 161, 174);
  @override
  Color get greyLight300 => const Color.fromARGB(255, 176, 186, 196);
  @override
  Color get greyLight200 => const Color.fromARGB(255, 205, 212, 218);
  @override
  Color get greyLight100 => const Color.fromARGB(255, 232, 235, 238);
  @override
  Color get greyLight50 => const Color.fromARGB(255, 247, 248, 249);
  @override
  Color get greyDark950 => const Color.fromARGB(255, 16, 18, 20);
  @override
  Color get greyDark900 => const Color.fromARGB(255, 27, 31, 34);
  @override
  Color get greyDark800 => const Color.fromARGB(255, 48, 54, 59);
  @override
  Color get greyDark700 => const Color.fromARGB(255, 68, 77, 85);
  @override
  Color get greyDark600 => const Color.fromARGB(255, 91, 102, 113);
  @override
  Color get greyDark500 => const Color.fromARGB(255, 111, 125, 139);
  @override
  Color get greyDark400 => const Color.fromARGB(255, 136, 148, 160);
  @override
  Color get greyDark300 => const Color.fromARGB(255, 162, 171, 180);
  @override
  Color get greyDark200 => const Color.fromARGB(255, 190, 196, 203);
  @override
  Color get greyDark100 => const Color.fromARGB(255, 215, 219, 223);
  @override
  Color get greyDark50 => const Color.fromARGB(255, 230, 232, 235);
  @override
  Color get baseBlack => const Color.fromARGB(255, 0, 0, 0);
  @override
  Color get baseWhite => const Color.fromARGB(255, 255, 255, 255);
  @override
  Color get alphaWhite100 => const Color.fromARGB(255, 255, 255, 255);
  @override
  Color get alphaWhite90 => const Color.fromARGB(229, 255, 255, 255);
  @override
  Color get alphaWhite80 => const Color.fromARGB(204, 255, 255, 255);
  @override
  Color get alphaWhite70 => const Color.fromARGB(178, 255, 255, 255);
  @override
  Color get alphaWhite60 => const Color.fromARGB(153, 255, 255, 255);
  @override
  Color get alphaWhite50 => const Color.fromARGB(128, 255, 255, 255);
  @override
  Color get alphaWhite40 => const Color.fromARGB(102, 255, 255, 255);
  @override
  Color get alphaWhite30 => const Color.fromARGB(77, 255, 255, 255);
  @override
  Color get alphaWhite20 => const Color.fromARGB(51, 255, 255, 255);
  @override
  Color get alphaWhite10 => const Color.fromARGB(26, 255, 255, 255);
  @override
  Color get alphaWhite5 => const Color.fromARGB(13, 255, 255, 255);
  @override
  Color get alphaGrey100 => const Color.fromARGB(255, 16, 18, 20);
  @override
  Color get alphaGrey90 => const Color.fromARGB(229, 16, 18, 20);
  @override
  Color get alphaGrey80 => const Color.fromARGB(204, 16, 18, 20);
  @override
  Color get alphaGrey70 => const Color.fromARGB(178, 16, 18, 20);
  @override
  Color get alphaGrey60 => const Color.fromARGB(153, 16, 18, 20);
  @override
  Color get alphaGrey50 => const Color.fromARGB(128, 16, 18, 20);
  @override
  Color get alphaGrey40 => const Color.fromARGB(102, 16, 18, 20);
  @override
  Color get alphaGrey30 => const Color.fromARGB(77, 16, 18, 20);
  @override
  Color get alphaGrey20 => const Color.fromARGB(51, 16, 18, 20);
  @override
  Color get alphaGrey10 => const Color.fromARGB(26, 16, 18, 20);
  @override
  Color get alphaGrey5 => const Color.fromARGB(13, 16, 18, 20);
}

class ThemeDefault {
  ThemeDefault._();
  ThemeDefault._lerp({
    required this.stateBaseWhite,
    required this.stateBaseGrey950,
    required this.stateGreyHighest900,
    required this.stateGreyHighestHover800,
    required this.stateGreyHigh700,
    required this.stateGreyDefault500,
    required this.stateGreyDefaultHover400,
    required this.stateGreyLow300,
    required this.stateGreyLowest50,
    required this.stateGreyLowestHover100,
    required this.stateBrandHighest950,
    required this.stateBrandHigh700,
    required this.stateBrandDefault500,
    required this.stateBrandLow200,
    required this.stateBrandLowest50,
    required this.stateDangerHighest950,
    required this.stateDangerHigh700,
    required this.stateDangerDefault500,
    required this.stateDangerLow200,
    required this.stateDangerLowest50,
    required this.stateWarningHighest950,
    required this.stateWarningHigh700,
    required this.stateWarningDefault500,
    required this.stateWarningLow200,
    required this.stateWarningLowest50,
    required this.stateInformationHighest950,
    required this.stateInformationHigh700,
    required this.stateInformationDefault500,
    required this.stateInformationLow200,
    required this.stateInformationLowest50,
    required this.stateSuccessHighest950,
    required this.stateSuccessHigh700,
    required this.stateSuccessDefault500,
    required this.stateSuccessLow200,
    required this.stateSuccessLowest50,
    required this.stateDiscoveryHighest950,
    required this.stateDiscoveryHigh700,
    required this.stateDiscoveryDefault500,
    required this.stateDiscoveryLow200,
    required this.stateDiscoveryLowest50,
    required this.stateQuietHighest950,
    required this.stateQuietHigh700,
    required this.stateQuietDefault500,
    required this.stateQuietLow200,
    required this.stateQuietLowest50,
    required this.textBaseWhite,
    required this.textBaseGrey950,
    required this.textGreyHighest950,
    required this.textGreyHigh700,
    required this.textGreyDefault500,
    required this.textGreyLow300,
    required this.textGreyLowestWhite,
    required this.textBrandHigh700,
    required this.textBrandDefault500,
    required this.textBrandLow300,
    required this.textDangerHigh700,
    required this.textDangerDefault500,
    required this.textDangerLow300,
    required this.textWarningHigh700,
    required this.textWarningDefault500,
    required this.textWarningLow300,
    required this.textInformationHigh700,
    required this.textInformationDefault500,
    required this.textInformationLow300,
    required this.textSuccessHigh700,
    required this.textSuccessDefault500,
    required this.textSuccessLow300,
    required this.textDiscoveryHigh700,
    required this.textDiscoveryDefault500,
    required this.textDiscoveryLow300,
    required this.textQuietHigh700,
    required this.textQuietDefault500,
    required this.textQuietLow300,
    required this.shadowSm5,
    required this.shadowMd10,
    required this.shadowLg20,
    required this.shadowXl30,
    required this.shadow2xl40,
    required this.alphaWhite100,
    required this.alphaWhite90,
    required this.alphaWhite80,
    required this.alphaWhite70,
    required this.alphaWhite60,
    required this.alphaWhite50,
    required this.alphaWhite40,
    required this.alphaWhite30,
    required this.alphaWhite20,
    required this.alphaWhite10,
    required this.alphaWhite5,
    required this.alphaGrey100,
    required this.alphaGrey90,
    required this.alphaGrey80,
    required this.alphaGrey70,
    required this.alphaGrey60,
    required this.alphaGrey50,
    required this.alphaGrey40,
    required this.alphaGrey30,
    required this.alphaGrey20,
    required this.alphaGrey10,
    required this.alphaGrey5,
    required this.stateBrandLowestHover100,
    required this.stateSuccessLowestHover100,
    required this.stateWarningLowestHover100,
    required this.stateInformationLowestHover100,
    required this.stateDangerLowestHover100,
    required this.stateDiscoveryLowestHover100,
    required this.stateQuietLowestHover100,
    required this.backgroundSurfacePrimaryWhite,
    required this.backgroundSurfacePrimaryHoverGrey100,
    required this.backgroundSurfacePrimaryPressedGrey200,
    required this.backgroundSurfaceSecondaryWhite,
    required this.backgroundSurfaceSecondaryHoverGrey100,
    required this.backgroundSurfaceSecondaryPressedGrey200,
    required this.backgroundSurfaceTertiaryGrey50,
    required this.backgroundSurfaceTertiaryHoverGrey100,
    required this.backgroundSurfaceTertiaryPressedGrey200,
    required this.backgroundBlanketPrimaryAlphaGrey50,
    required this.backgroundBlanketSecondaryAlphaGrey70,
    required this.strokeBaseWhite,
    required this.strokeBaseGrey950,
    required this.strokeGreyHighest950,
    required this.strokeGreyHigh700,
    required this.strokeGreyDefault500,
    required this.strokeGreyLow300,
    required this.strokeGreyLowestWhite,
    required this.strokeBrandHigh700,
    required this.strokeBrandDefault500,
    required this.strokeBrandLow300,
    required this.strokeSuccessHigh700,
    required this.strokeSuccessDefault500,
    required this.strokeSuccessLow300,
    required this.strokeWarningHigh700,
    required this.strokeWarningDefault500,
    required this.strokeWarningLow300,
    required this.strokeInformationHigh700,
    required this.strokeInformationDefault500,
    required this.strokeInformationLow300,
    required this.strokeDangerHigh700,
    required this.strokeDangerDefault500,
    required this.strokeDangerLow300,
    required this.strokeDiscoveryHigh700,
    required this.strokeDiscoveryDefault500,
    required this.strokeDiscoveryLow300,
    required this.strokeQuietHigh700,
    required this.strokeQuietDefault500,
    required this.strokeQuietLow300,
  });
  late final Color stateBaseWhite;
  late final Color stateBaseGrey950;
  late final Color stateGreyHighest900;
  late final Color stateGreyHighestHover800;
  late final Color stateGreyHigh700;
  late final Color stateGreyDefault500;
  late final Color stateGreyDefaultHover400;
  late final Color stateGreyLow300;
  late final Color stateGreyLowest50;
  late final Color stateGreyLowestHover100;
  late final Color stateBrandHighest950;
  late final Color stateBrandHigh700;
  late final Color stateBrandDefault500;
  late final Color stateBrandLow200;
  late final Color stateBrandLowest50;
  late final Color stateDangerHighest950;
  late final Color stateDangerHigh700;
  late final Color stateDangerDefault500;
  late final Color stateDangerLow200;
  late final Color stateDangerLowest50;
  late final Color stateWarningHighest950;
  late final Color stateWarningHigh700;
  late final Color stateWarningDefault500;
  late final Color stateWarningLow200;
  late final Color stateWarningLowest50;
  late final Color stateInformationHighest950;
  late final Color stateInformationHigh700;
  late final Color stateInformationDefault500;
  late final Color stateInformationLow200;
  late final Color stateInformationLowest50;
  late final Color stateSuccessHighest950;
  late final Color stateSuccessHigh700;
  late final Color stateSuccessDefault500;
  late final Color stateSuccessLow200;
  late final Color stateSuccessLowest50;
  late final Color stateDiscoveryHighest950;
  late final Color stateDiscoveryHigh700;
  late final Color stateDiscoveryDefault500;
  late final Color stateDiscoveryLow200;
  late final Color stateDiscoveryLowest50;
  late final Color stateQuietHighest950;
  late final Color stateQuietHigh700;
  late final Color stateQuietDefault500;
  late final Color stateQuietLow200;
  late final Color stateQuietLowest50;
  late final Color textBaseWhite;
  late final Color textBaseGrey950;
  late final Color textGreyHighest950;
  late final Color textGreyHigh700;
  late final Color textGreyDefault500;
  late final Color textGreyLow300;
  late final Color textGreyLowestWhite;
  late final Color textBrandHigh700;
  late final Color textBrandDefault500;
  late final Color textBrandLow300;
  late final Color textDangerHigh700;
  late final Color textDangerDefault500;
  late final Color textDangerLow300;
  late final Color textWarningHigh700;
  late final Color textWarningDefault500;
  late final Color textWarningLow300;
  late final Color textInformationHigh700;
  late final Color textInformationDefault500;
  late final Color textInformationLow300;
  late final Color textSuccessHigh700;
  late final Color textSuccessDefault500;
  late final Color textSuccessLow300;
  late final Color textDiscoveryHigh700;
  late final Color textDiscoveryDefault500;
  late final Color textDiscoveryLow300;
  late final Color textQuietHigh700;
  late final Color textQuietDefault500;
  late final Color textQuietLow300;
  late final Color shadowSm5;
  late final Color shadowMd10;
  late final Color shadowLg20;
  late final Color shadowXl30;
  late final Color shadow2xl40;
  late final Color alphaWhite100;
  late final Color alphaWhite90;
  late final Color alphaWhite80;
  late final Color alphaWhite70;
  late final Color alphaWhite60;
  late final Color alphaWhite50;
  late final Color alphaWhite40;
  late final Color alphaWhite30;
  late final Color alphaWhite20;
  late final Color alphaWhite10;
  late final Color alphaWhite5;
  late final Color alphaGrey100;
  late final Color alphaGrey90;
  late final Color alphaGrey80;
  late final Color alphaGrey70;
  late final Color alphaGrey60;
  late final Color alphaGrey50;
  late final Color alphaGrey40;
  late final Color alphaGrey30;
  late final Color alphaGrey20;
  late final Color alphaGrey10;
  late final Color alphaGrey5;
  late final Color stateBrandLowestHover100;
  late final Color stateSuccessLowestHover100;
  late final Color stateWarningLowestHover100;
  late final Color stateInformationLowestHover100;
  late final Color stateDangerLowestHover100;
  late final Color stateDiscoveryLowestHover100;
  late final Color stateQuietLowestHover100;
  late final Color backgroundSurfacePrimaryWhite;
  late final Color backgroundSurfacePrimaryHoverGrey100;
  late final Color backgroundSurfacePrimaryPressedGrey200;
  late final Color backgroundSurfaceSecondaryWhite;
  late final Color backgroundSurfaceSecondaryHoverGrey100;
  late final Color backgroundSurfaceSecondaryPressedGrey200;
  late final Color backgroundSurfaceTertiaryGrey50;
  late final Color backgroundSurfaceTertiaryHoverGrey100;
  late final Color backgroundSurfaceTertiaryPressedGrey200;
  late final Color backgroundBlanketPrimaryAlphaGrey50;
  late final Color backgroundBlanketSecondaryAlphaGrey70;
  late final Color strokeBaseWhite;
  late final Color strokeBaseGrey950;
  late final Color strokeGreyHighest950;
  late final Color strokeGreyHigh700;
  late final Color strokeGreyDefault500;
  late final Color strokeGreyLow300;
  late final Color strokeGreyLowestWhite;
  late final Color strokeBrandHigh700;
  late final Color strokeBrandDefault500;
  late final Color strokeBrandLow300;
  late final Color strokeSuccessHigh700;
  late final Color strokeSuccessDefault500;
  late final Color strokeSuccessLow300;
  late final Color strokeWarningHigh700;
  late final Color strokeWarningDefault500;
  late final Color strokeWarningLow300;
  late final Color strokeInformationHigh700;
  late final Color strokeInformationDefault500;
  late final Color strokeInformationLow300;
  late final Color strokeDangerHigh700;
  late final Color strokeDangerDefault500;
  late final Color strokeDangerLow300;
  late final Color strokeDiscoveryHigh700;
  late final Color strokeDiscoveryDefault500;
  late final Color strokeDiscoveryLow300;
  late final Color strokeQuietHigh700;
  late final Color strokeQuietDefault500;
  late final Color strokeQuietLow300;
  static ThemeDefault _lerpResolve(ThemeDefault a, ThemeDefault b, double t) {
    return ThemeDefault._lerp(
      stateBaseWhite: b.stateBaseWhite._lerp(a.stateBaseWhite, t),
      stateBaseGrey950: b.stateBaseGrey950._lerp(a.stateBaseGrey950, t),
      stateGreyHighest900: b.stateGreyHighest900._lerp(a.stateGreyHighest900, t),
      stateGreyHighestHover800: b.stateGreyHighestHover800._lerp(a.stateGreyHighestHover800, t),
      stateGreyHigh700: b.stateGreyHigh700._lerp(a.stateGreyHigh700, t),
      stateGreyDefault500: b.stateGreyDefault500._lerp(a.stateGreyDefault500, t),
      stateGreyDefaultHover400: b.stateGreyDefaultHover400._lerp(a.stateGreyDefaultHover400, t),
      stateGreyLow300: b.stateGreyLow300._lerp(a.stateGreyLow300, t),
      stateGreyLowest50: b.stateGreyLowest50._lerp(a.stateGreyLowest50, t),
      stateGreyLowestHover100: b.stateGreyLowestHover100._lerp(a.stateGreyLowestHover100, t),
      stateBrandHighest950: b.stateBrandHighest950._lerp(a.stateBrandHighest950, t),
      stateBrandHigh700: b.stateBrandHigh700._lerp(a.stateBrandHigh700, t),
      stateBrandDefault500: b.stateBrandDefault500._lerp(a.stateBrandDefault500, t),
      stateBrandLow200: b.stateBrandLow200._lerp(a.stateBrandLow200, t),
      stateBrandLowest50: b.stateBrandLowest50._lerp(a.stateBrandLowest50, t),
      stateDangerHighest950: b.stateDangerHighest950._lerp(a.stateDangerHighest950, t),
      stateDangerHigh700: b.stateDangerHigh700._lerp(a.stateDangerHigh700, t),
      stateDangerDefault500: b.stateDangerDefault500._lerp(a.stateDangerDefault500, t),
      stateDangerLow200: b.stateDangerLow200._lerp(a.stateDangerLow200, t),
      stateDangerLowest50: b.stateDangerLowest50._lerp(a.stateDangerLowest50, t),
      stateWarningHighest950: b.stateWarningHighest950._lerp(a.stateWarningHighest950, t),
      stateWarningHigh700: b.stateWarningHigh700._lerp(a.stateWarningHigh700, t),
      stateWarningDefault500: b.stateWarningDefault500._lerp(a.stateWarningDefault500, t),
      stateWarningLow200: b.stateWarningLow200._lerp(a.stateWarningLow200, t),
      stateWarningLowest50: b.stateWarningLowest50._lerp(a.stateWarningLowest50, t),
      stateInformationHighest950: b.stateInformationHighest950._lerp(a.stateInformationHighest950, t),
      stateInformationHigh700: b.stateInformationHigh700._lerp(a.stateInformationHigh700, t),
      stateInformationDefault500: b.stateInformationDefault500._lerp(a.stateInformationDefault500, t),
      stateInformationLow200: b.stateInformationLow200._lerp(a.stateInformationLow200, t),
      stateInformationLowest50: b.stateInformationLowest50._lerp(a.stateInformationLowest50, t),
      stateSuccessHighest950: b.stateSuccessHighest950._lerp(a.stateSuccessHighest950, t),
      stateSuccessHigh700: b.stateSuccessHigh700._lerp(a.stateSuccessHigh700, t),
      stateSuccessDefault500: b.stateSuccessDefault500._lerp(a.stateSuccessDefault500, t),
      stateSuccessLow200: b.stateSuccessLow200._lerp(a.stateSuccessLow200, t),
      stateSuccessLowest50: b.stateSuccessLowest50._lerp(a.stateSuccessLowest50, t),
      stateDiscoveryHighest950: b.stateDiscoveryHighest950._lerp(a.stateDiscoveryHighest950, t),
      stateDiscoveryHigh700: b.stateDiscoveryHigh700._lerp(a.stateDiscoveryHigh700, t),
      stateDiscoveryDefault500: b.stateDiscoveryDefault500._lerp(a.stateDiscoveryDefault500, t),
      stateDiscoveryLow200: b.stateDiscoveryLow200._lerp(a.stateDiscoveryLow200, t),
      stateDiscoveryLowest50: b.stateDiscoveryLowest50._lerp(a.stateDiscoveryLowest50, t),
      stateQuietHighest950: b.stateQuietHighest950._lerp(a.stateQuietHighest950, t),
      stateQuietHigh700: b.stateQuietHigh700._lerp(a.stateQuietHigh700, t),
      stateQuietDefault500: b.stateQuietDefault500._lerp(a.stateQuietDefault500, t),
      stateQuietLow200: b.stateQuietLow200._lerp(a.stateQuietLow200, t),
      stateQuietLowest50: b.stateQuietLowest50._lerp(a.stateQuietLowest50, t),
      textBaseWhite: b.textBaseWhite._lerp(a.textBaseWhite, t),
      textBaseGrey950: b.textBaseGrey950._lerp(a.textBaseGrey950, t),
      textGreyHighest950: b.textGreyHighest950._lerp(a.textGreyHighest950, t),
      textGreyHigh700: b.textGreyHigh700._lerp(a.textGreyHigh700, t),
      textGreyDefault500: b.textGreyDefault500._lerp(a.textGreyDefault500, t),
      textGreyLow300: b.textGreyLow300._lerp(a.textGreyLow300, t),
      textGreyLowestWhite: b.textGreyLowestWhite._lerp(a.textGreyLowestWhite, t),
      textBrandHigh700: b.textBrandHigh700._lerp(a.textBrandHigh700, t),
      textBrandDefault500: b.textBrandDefault500._lerp(a.textBrandDefault500, t),
      textBrandLow300: b.textBrandLow300._lerp(a.textBrandLow300, t),
      textDangerHigh700: b.textDangerHigh700._lerp(a.textDangerHigh700, t),
      textDangerDefault500: b.textDangerDefault500._lerp(a.textDangerDefault500, t),
      textDangerLow300: b.textDangerLow300._lerp(a.textDangerLow300, t),
      textWarningHigh700: b.textWarningHigh700._lerp(a.textWarningHigh700, t),
      textWarningDefault500: b.textWarningDefault500._lerp(a.textWarningDefault500, t),
      textWarningLow300: b.textWarningLow300._lerp(a.textWarningLow300, t),
      textInformationHigh700: b.textInformationHigh700._lerp(a.textInformationHigh700, t),
      textInformationDefault500: b.textInformationDefault500._lerp(a.textInformationDefault500, t),
      textInformationLow300: b.textInformationLow300._lerp(a.textInformationLow300, t),
      textSuccessHigh700: b.textSuccessHigh700._lerp(a.textSuccessHigh700, t),
      textSuccessDefault500: b.textSuccessDefault500._lerp(a.textSuccessDefault500, t),
      textSuccessLow300: b.textSuccessLow300._lerp(a.textSuccessLow300, t),
      textDiscoveryHigh700: b.textDiscoveryHigh700._lerp(a.textDiscoveryHigh700, t),
      textDiscoveryDefault500: b.textDiscoveryDefault500._lerp(a.textDiscoveryDefault500, t),
      textDiscoveryLow300: b.textDiscoveryLow300._lerp(a.textDiscoveryLow300, t),
      textQuietHigh700: b.textQuietHigh700._lerp(a.textQuietHigh700, t),
      textQuietDefault500: b.textQuietDefault500._lerp(a.textQuietDefault500, t),
      textQuietLow300: b.textQuietLow300._lerp(a.textQuietLow300, t),
      shadowSm5: b.shadowSm5._lerp(a.shadowSm5, t),
      shadowMd10: b.shadowMd10._lerp(a.shadowMd10, t),
      shadowLg20: b.shadowLg20._lerp(a.shadowLg20, t),
      shadowXl30: b.shadowXl30._lerp(a.shadowXl30, t),
      shadow2xl40: b.shadow2xl40._lerp(a.shadow2xl40, t),
      alphaWhite100: b.alphaWhite100._lerp(a.alphaWhite100, t),
      alphaWhite90: b.alphaWhite90._lerp(a.alphaWhite90, t),
      alphaWhite80: b.alphaWhite80._lerp(a.alphaWhite80, t),
      alphaWhite70: b.alphaWhite70._lerp(a.alphaWhite70, t),
      alphaWhite60: b.alphaWhite60._lerp(a.alphaWhite60, t),
      alphaWhite50: b.alphaWhite50._lerp(a.alphaWhite50, t),
      alphaWhite40: b.alphaWhite40._lerp(a.alphaWhite40, t),
      alphaWhite30: b.alphaWhite30._lerp(a.alphaWhite30, t),
      alphaWhite20: b.alphaWhite20._lerp(a.alphaWhite20, t),
      alphaWhite10: b.alphaWhite10._lerp(a.alphaWhite10, t),
      alphaWhite5: b.alphaWhite5._lerp(a.alphaWhite5, t),
      alphaGrey100: b.alphaGrey100._lerp(a.alphaGrey100, t),
      alphaGrey90: b.alphaGrey90._lerp(a.alphaGrey90, t),
      alphaGrey80: b.alphaGrey80._lerp(a.alphaGrey80, t),
      alphaGrey70: b.alphaGrey70._lerp(a.alphaGrey70, t),
      alphaGrey60: b.alphaGrey60._lerp(a.alphaGrey60, t),
      alphaGrey50: b.alphaGrey50._lerp(a.alphaGrey50, t),
      alphaGrey40: b.alphaGrey40._lerp(a.alphaGrey40, t),
      alphaGrey30: b.alphaGrey30._lerp(a.alphaGrey30, t),
      alphaGrey20: b.alphaGrey20._lerp(a.alphaGrey20, t),
      alphaGrey10: b.alphaGrey10._lerp(a.alphaGrey10, t),
      alphaGrey5: b.alphaGrey5._lerp(a.alphaGrey5, t),
      stateBrandLowestHover100: b.stateBrandLowestHover100._lerp(a.stateBrandLowestHover100, t),
      stateSuccessLowestHover100: b.stateSuccessLowestHover100._lerp(a.stateSuccessLowestHover100, t),
      stateWarningLowestHover100: b.stateWarningLowestHover100._lerp(a.stateWarningLowestHover100, t),
      stateInformationLowestHover100: b.stateInformationLowestHover100._lerp(a.stateInformationLowestHover100, t),
      stateDangerLowestHover100: b.stateDangerLowestHover100._lerp(a.stateDangerLowestHover100, t),
      stateDiscoveryLowestHover100: b.stateDiscoveryLowestHover100._lerp(a.stateDiscoveryLowestHover100, t),
      stateQuietLowestHover100: b.stateQuietLowestHover100._lerp(a.stateQuietLowestHover100, t),
      backgroundSurfacePrimaryWhite: b.backgroundSurfacePrimaryWhite._lerp(a.backgroundSurfacePrimaryWhite, t),
      backgroundSurfacePrimaryHoverGrey100: b.backgroundSurfacePrimaryHoverGrey100._lerp(a.backgroundSurfacePrimaryHoverGrey100, t),
      backgroundSurfacePrimaryPressedGrey200: b.backgroundSurfacePrimaryPressedGrey200._lerp(a.backgroundSurfacePrimaryPressedGrey200, t),
      backgroundSurfaceSecondaryWhite: b.backgroundSurfaceSecondaryWhite._lerp(a.backgroundSurfaceSecondaryWhite, t),
      backgroundSurfaceSecondaryHoverGrey100: b.backgroundSurfaceSecondaryHoverGrey100._lerp(a.backgroundSurfaceSecondaryHoverGrey100, t),
      backgroundSurfaceSecondaryPressedGrey200: b.backgroundSurfaceSecondaryPressedGrey200._lerp(a.backgroundSurfaceSecondaryPressedGrey200, t),
      backgroundSurfaceTertiaryGrey50: b.backgroundSurfaceTertiaryGrey50._lerp(a.backgroundSurfaceTertiaryGrey50, t),
      backgroundSurfaceTertiaryHoverGrey100: b.backgroundSurfaceTertiaryHoverGrey100._lerp(a.backgroundSurfaceTertiaryHoverGrey100, t),
      backgroundSurfaceTertiaryPressedGrey200: b.backgroundSurfaceTertiaryPressedGrey200._lerp(a.backgroundSurfaceTertiaryPressedGrey200, t),
      backgroundBlanketPrimaryAlphaGrey50: b.backgroundBlanketPrimaryAlphaGrey50._lerp(a.backgroundBlanketPrimaryAlphaGrey50, t),
      backgroundBlanketSecondaryAlphaGrey70: b.backgroundBlanketSecondaryAlphaGrey70._lerp(a.backgroundBlanketSecondaryAlphaGrey70, t),
      strokeBaseWhite: b.strokeBaseWhite._lerp(a.strokeBaseWhite, t),
      strokeBaseGrey950: b.strokeBaseGrey950._lerp(a.strokeBaseGrey950, t),
      strokeGreyHighest950: b.strokeGreyHighest950._lerp(a.strokeGreyHighest950, t),
      strokeGreyHigh700: b.strokeGreyHigh700._lerp(a.strokeGreyHigh700, t),
      strokeGreyDefault500: b.strokeGreyDefault500._lerp(a.strokeGreyDefault500, t),
      strokeGreyLow300: b.strokeGreyLow300._lerp(a.strokeGreyLow300, t),
      strokeGreyLowestWhite: b.strokeGreyLowestWhite._lerp(a.strokeGreyLowestWhite, t),
      strokeBrandHigh700: b.strokeBrandHigh700._lerp(a.strokeBrandHigh700, t),
      strokeBrandDefault500: b.strokeBrandDefault500._lerp(a.strokeBrandDefault500, t),
      strokeBrandLow300: b.strokeBrandLow300._lerp(a.strokeBrandLow300, t),
      strokeSuccessHigh700: b.strokeSuccessHigh700._lerp(a.strokeSuccessHigh700, t),
      strokeSuccessDefault500: b.strokeSuccessDefault500._lerp(a.strokeSuccessDefault500, t),
      strokeSuccessLow300: b.strokeSuccessLow300._lerp(a.strokeSuccessLow300, t),
      strokeWarningHigh700: b.strokeWarningHigh700._lerp(a.strokeWarningHigh700, t),
      strokeWarningDefault500: b.strokeWarningDefault500._lerp(a.strokeWarningDefault500, t),
      strokeWarningLow300: b.strokeWarningLow300._lerp(a.strokeWarningLow300, t),
      strokeInformationHigh700: b.strokeInformationHigh700._lerp(a.strokeInformationHigh700, t),
      strokeInformationDefault500: b.strokeInformationDefault500._lerp(a.strokeInformationDefault500, t),
      strokeInformationLow300: b.strokeInformationLow300._lerp(a.strokeInformationLow300, t),
      strokeDangerHigh700: b.strokeDangerHigh700._lerp(a.strokeDangerHigh700, t),
      strokeDangerDefault500: b.strokeDangerDefault500._lerp(a.strokeDangerDefault500, t),
      strokeDangerLow300: b.strokeDangerLow300._lerp(a.strokeDangerLow300, t),
      strokeDiscoveryHigh700: b.strokeDiscoveryHigh700._lerp(a.strokeDiscoveryHigh700, t),
      strokeDiscoveryDefault500: b.strokeDiscoveryDefault500._lerp(a.strokeDiscoveryDefault500, t),
      strokeDiscoveryLow300: b.strokeDiscoveryLow300._lerp(a.strokeDiscoveryLow300, t),
      strokeQuietHigh700: b.strokeQuietHigh700._lerp(a.strokeQuietHigh700, t),
      strokeQuietDefault500: b.strokeQuietDefault500._lerp(a.strokeQuietDefault500, t),
      strokeQuietLow300: b.strokeQuietLow300._lerp(a.strokeQuietLow300, t),
    );
  }
}

class _ThemeLight extends ThemeDefault {
  _ThemeLight._() : super._();
  @override
  Color get stateBaseWhite => AllColors.baseWhite;
  @override
  Color get stateBaseGrey950 => AllColors.greyLight950;
  @override
  Color get stateGreyHighest900 => AllColors.greyLight900;
  @override
  Color get stateGreyHighestHover800 => AllColors.greyLight800;
  @override
  Color get stateGreyHigh700 => AllColors.greyLight700;
  @override
  Color get stateGreyDefault500 => AllColors.greyLight500;
  @override
  Color get stateGreyDefaultHover400 => AllColors.greyLight400;
  @override
  Color get stateGreyLow300 => AllColors.greyLight300;
  @override
  Color get stateGreyLowest50 => AllColors.greyLight50;
  @override
  Color get stateGreyLowestHover100 => AllColors.greyLight100;
  @override
  Color get stateBrandHighest950 => BrandColor.brand900;
  @override
  Color get stateBrandHigh700 => BrandColor.brand700;
  @override
  Color get stateBrandDefault500 => BrandColor.brand500;
  @override
  Color get stateBrandLow200 => BrandColor.brand200;
  @override
  Color get stateBrandLowest50 => BrandColor.brand50;
  @override
  Color get stateDangerHighest950 => AllColors.red900;
  @override
  Color get stateDangerHigh700 => AllColors.red700;
  @override
  Color get stateDangerDefault500 => AllColors.red500;
  @override
  Color get stateDangerLow200 => AllColors.red300;
  @override
  Color get stateDangerLowest50 => AllColors.red50;
  @override
  Color get stateWarningHighest950 => AllColors.orange900;
  @override
  Color get stateWarningHigh700 => AllColors.orange700;
  @override
  Color get stateWarningDefault500 => AllColors.orange500;
  @override
  Color get stateWarningLow200 => AllColors.orange200;
  @override
  Color get stateWarningLowest50 => AllColors.orange50;
  @override
  Color get stateInformationHighest950 => AllColors.blue900;
  @override
  Color get stateInformationHigh700 => AllColors.blue700;
  @override
  Color get stateInformationDefault500 => AllColors.blue500;
  @override
  Color get stateInformationLow200 => AllColors.blue200;
  @override
  Color get stateInformationLowest50 => AllColors.blue50;
  @override
  Color get stateSuccessHighest950 => AllColors.green900;
  @override
  Color get stateSuccessHigh700 => AllColors.green700;
  @override
  Color get stateSuccessDefault500 => AllColors.green500;
  @override
  Color get stateSuccessLow200 => AllColors.green200;
  @override
  Color get stateSuccessLowest50 => AllColors.green50;
  @override
  Color get stateDiscoveryHighest950 => AllColors.violet900;
  @override
  Color get stateDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get stateDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get stateDiscoveryLow200 => AllColors.violet200;
  @override
  Color get stateDiscoveryLowest50 => AllColors.violet50;
  @override
  Color get stateQuietHighest950 => AllColors.teal900;
  @override
  Color get stateQuietHigh700 => AllColors.teal700;
  @override
  Color get stateQuietDefault500 => AllColors.teal500;
  @override
  Color get stateQuietLow200 => AllColors.teal200;
  @override
  Color get stateQuietLowest50 => AllColors.teal50;
  @override
  Color get textBaseWhite => AllColors.baseWhite;
  @override
  Color get textBaseGrey950 => AllColors.greyLight950;
  @override
  Color get textGreyHighest950 => AllColors.greyLight950;
  @override
  Color get textGreyHigh700 => AllColors.greyLight700;
  @override
  Color get textGreyDefault500 => AllColors.greyLight500;
  @override
  Color get textGreyLow300 => AllColors.greyLight300;
  @override
  Color get textGreyLowestWhite => AllColors.baseWhite;
  @override
  Color get textBrandHigh700 => BrandColor.brand700;
  @override
  Color get textBrandDefault500 => BrandColor.brand500;
  @override
  Color get textBrandLow300 => BrandColor.brand300;
  @override
  Color get textDangerHigh700 => AllColors.red700;
  @override
  Color get textDangerDefault500 => AllColors.red500;
  @override
  Color get textDangerLow300 => AllColors.red300;
  @override
  Color get textWarningHigh700 => AllColors.orange700;
  @override
  Color get textWarningDefault500 => AllColors.orange500;
  @override
  Color get textWarningLow300 => AllColors.orange300;
  @override
  Color get textInformationHigh700 => AllColors.blue700;
  @override
  Color get textInformationDefault500 => AllColors.blue500;
  @override
  Color get textInformationLow300 => AllColors.blue300;
  @override
  Color get textSuccessHigh700 => AllColors.green700;
  @override
  Color get textSuccessDefault500 => AllColors.green500;
  @override
  Color get textSuccessLow300 => AllColors.green300;
  @override
  Color get textDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get textDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get textDiscoveryLow300 => AllColors.violet300;
  @override
  Color get textQuietHigh700 => AllColors.teal700;
  @override
  Color get textQuietDefault500 => AllColors.teal500;
  @override
  Color get textQuietLow300 => AllColors.teal300;
  @override
  Color get shadowSm5 => AllColors.alphaGrey5;
  @override
  Color get shadowMd10 => alphaGrey10;
  @override
  Color get shadowLg20 => alphaGrey20;
  @override
  Color get shadowXl30 => alphaGrey30;
  @override
  Color get shadow2xl40 => alphaGrey40;
  @override
  Color get alphaWhite100 => AllColors.alphaWhite100;
  @override
  Color get alphaWhite90 => AllColors.alphaWhite90;
  @override
  Color get alphaWhite80 => AllColors.alphaWhite80;
  @override
  Color get alphaWhite70 => AllColors.alphaWhite70;
  @override
  Color get alphaWhite60 => AllColors.alphaWhite60;
  @override
  Color get alphaWhite50 => AllColors.alphaWhite50;
  @override
  Color get alphaWhite40 => AllColors.alphaWhite40;
  @override
  Color get alphaWhite30 => AllColors.alphaWhite30;
  @override
  Color get alphaWhite20 => AllColors.alphaWhite20;
  @override
  Color get alphaWhite10 => AllColors.alphaWhite10;
  @override
  Color get alphaWhite5 => AllColors.alphaWhite5;
  @override
  Color get alphaGrey100 => AllColors.alphaGrey100;
  @override
  Color get alphaGrey90 => AllColors.alphaGrey90;
  @override
  Color get alphaGrey80 => AllColors.alphaGrey80;
  @override
  Color get alphaGrey70 => AllColors.alphaGrey70;
  @override
  Color get alphaGrey60 => AllColors.alphaGrey60;
  @override
  Color get alphaGrey50 => AllColors.alphaGrey50;
  @override
  Color get alphaGrey40 => AllColors.alphaGrey40;
  @override
  Color get alphaGrey30 => AllColors.alphaGrey30;
  @override
  Color get alphaGrey20 => AllColors.alphaGrey20;
  @override
  Color get alphaGrey10 => AllColors.alphaGrey10;
  @override
  Color get alphaGrey5 => AllColors.alphaGrey5;
  @override
  Color get stateBrandLowestHover100 => BrandColor.brand100;
  @override
  Color get stateSuccessLowestHover100 => AllColors.green100;
  @override
  Color get stateWarningLowestHover100 => AllColors.orange100;
  @override
  Color get stateInformationLowestHover100 => AllColors.blue100;
  @override
  Color get stateDangerLowestHover100 => AllColors.red100;
  @override
  Color get stateDiscoveryLowestHover100 => AllColors.violet100;
  @override
  Color get stateQuietLowestHover100 => AllColors.teal100;
  @override
  Color get backgroundSurfacePrimaryWhite => AllColors.baseWhite;
  @override
  Color get backgroundSurfacePrimaryHoverGrey100 => AllColors.greyLight100;
  @override
  Color get backgroundSurfacePrimaryPressedGrey200 => AllColors.greyLight200;
  @override
  Color get backgroundSurfaceSecondaryWhite => AllColors.baseWhite;
  @override
  Color get backgroundSurfaceSecondaryHoverGrey100 => AllColors.greyLight100;
  @override
  Color get backgroundSurfaceSecondaryPressedGrey200 => AllColors.greyLight200;
  @override
  Color get backgroundSurfaceTertiaryGrey50 => AllColors.greyLight50;
  @override
  Color get backgroundSurfaceTertiaryHoverGrey100 => AllColors.greyLight100;
  @override
  Color get backgroundSurfaceTertiaryPressedGrey200 => AllColors.greyLight200;
  @override
  Color get backgroundBlanketPrimaryAlphaGrey50 => AllColors.alphaGrey50;
  @override
  Color get backgroundBlanketSecondaryAlphaGrey70 => AllColors.alphaGrey70;
  @override
  Color get strokeBaseWhite => AllColors.baseWhite;
  @override
  Color get strokeBaseGrey950 => AllColors.greyLight950;
  @override
  Color get strokeGreyHighest950 => AllColors.greyLight950;
  @override
  Color get strokeGreyHigh700 => AllColors.greyLight700;
  @override
  Color get strokeGreyDefault500 => AllColors.greyLight500;
  @override
  Color get strokeGreyLow300 => AllColors.greyLight300;
  @override
  Color get strokeGreyLowestWhite => AllColors.baseWhite;
  @override
  Color get strokeBrandHigh700 => BrandColor.brand700;
  @override
  Color get strokeBrandDefault500 => BrandColor.brand500;
  @override
  Color get strokeBrandLow300 => BrandColor.brand300;
  @override
  Color get strokeSuccessHigh700 => AllColors.green700;
  @override
  Color get strokeSuccessDefault500 => AllColors.green500;
  @override
  Color get strokeSuccessLow300 => AllColors.green300;
  @override
  Color get strokeWarningHigh700 => AllColors.orange700;
  @override
  Color get strokeWarningDefault500 => AllColors.orange500;
  @override
  Color get strokeWarningLow300 => AllColors.orange300;
  @override
  Color get strokeInformationHigh700 => AllColors.blue700;
  @override
  Color get strokeInformationDefault500 => AllColors.blue500;
  @override
  Color get strokeInformationLow300 => AllColors.blue300;
  @override
  Color get strokeDangerHigh700 => AllColors.red700;
  @override
  Color get strokeDangerDefault500 => AllColors.red500;
  @override
  Color get strokeDangerLow300 => AllColors.red300;
  @override
  Color get strokeDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get strokeDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get strokeDiscoveryLow300 => AllColors.violet300;
  @override
  Color get strokeQuietHigh700 => AllColors.teal700;
  @override
  Color get strokeQuietDefault500 => AllColors.teal500;
  @override
  Color get strokeQuietLow300 => AllColors.teal300;
}

class _ThemeDark extends ThemeDefault {
  _ThemeDark._() : super._();
  @override
  Color get stateBaseWhite => AllColors.greyDark950;
  @override
  Color get stateBaseGrey950 => AllColors.baseWhite;
  @override
  Color get stateGreyHighest900 => AllColors.greyLight50;
  @override
  Color get stateGreyHighestHover800 => AllColors.greyDark100;
  @override
  Color get stateGreyHigh700 => AllColors.greyDark200;
  @override
  Color get stateGreyDefault500 => AllColors.greyDark400;
  @override
  Color get stateGreyDefaultHover400 => AllColors.greyDark500;
  @override
  Color get stateGreyLow300 => AllColors.greyDark600;
  @override
  Color get stateGreyLowest50 => AllColors.greyDark900;
  @override
  Color get stateGreyLowestHover100 => AllColors.greyDark800;
  @override
  Color get stateBrandHighest950 => BrandColor.brand50;
  @override
  Color get stateBrandHigh700 => BrandColor.brand200;
  @override
  Color get stateBrandDefault500 => BrandColor.brand400;
  @override
  Color get stateBrandLow200 => BrandColor.brand700;
  @override
  Color get stateBrandLowest50 => BrandColor.brand900;
  @override
  Color get stateDangerHighest950 => AllColors.red50;
  @override
  Color get stateDangerHigh700 => AllColors.red200;
  @override
  Color get stateDangerDefault500 => AllColors.red400;
  @override
  Color get stateDangerLow200 => AllColors.red700;
  @override
  Color get stateDangerLowest50 => AllColors.red900;
  @override
  Color get stateWarningHighest950 => AllColors.orange50;
  @override
  Color get stateWarningHigh700 => AllColors.orange200;
  @override
  Color get stateWarningDefault500 => AllColors.orange400;
  @override
  Color get stateWarningLow200 => AllColors.orange700;
  @override
  Color get stateWarningLowest50 => AllColors.orange900;
  @override
  Color get stateInformationHighest950 => AllColors.blue50;
  @override
  Color get stateInformationHigh700 => AllColors.blue200;
  @override
  Color get stateInformationDefault500 => AllColors.blue400;
  @override
  Color get stateInformationLow200 => AllColors.blue700;
  @override
  Color get stateInformationLowest50 => AllColors.blue900;
  @override
  Color get stateSuccessHighest950 => AllColors.green50;
  @override
  Color get stateSuccessHigh700 => AllColors.green200;
  @override
  Color get stateSuccessDefault500 => AllColors.green400;
  @override
  Color get stateSuccessLow200 => AllColors.green700;
  @override
  Color get stateSuccessLowest50 => AllColors.green900;
  @override
  Color get stateDiscoveryHighest950 => AllColors.violet50;
  @override
  Color get stateDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get stateDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get stateDiscoveryLow200 => AllColors.violet700;
  @override
  Color get stateDiscoveryLowest50 => AllColors.violet900;
  @override
  Color get stateQuietHighest950 => AllColors.teal50;
  @override
  Color get stateQuietHigh700 => AllColors.teal200;
  @override
  Color get stateQuietDefault500 => AllColors.teal400;
  @override
  Color get stateQuietLow200 => AllColors.teal700;
  @override
  Color get stateQuietLowest50 => AllColors.teal900;
  @override
  Color get textBaseWhite => AllColors.baseWhite;
  @override
  Color get textBaseGrey950 => AllColors.greyDark950;
  @override
  Color get textGreyHighest950 => AllColors.baseWhite;
  @override
  Color get textGreyHigh700 => AllColors.greyDark200;
  @override
  Color get textGreyDefault500 => AllColors.greyDark500;
  @override
  Color get textGreyLow300 => AllColors.greyDark300;
  @override
  Color get textGreyLowestWhite => AllColors.greyDark950;
  @override
  Color get textBrandHigh700 => BrandColor.brand300;
  @override
  Color get textBrandDefault500 => BrandColor.brand400;
  @override
  Color get textBrandLow300 => BrandColor.brand700;
  @override
  Color get textDangerHigh700 => AllColors.red200;
  @override
  Color get textDangerDefault500 => AllColors.red400;
  @override
  Color get textDangerLow300 => AllColors.red700;
  @override
  Color get textWarningHigh700 => AllColors.orange200;
  @override
  Color get textWarningDefault500 => AllColors.orange400;
  @override
  Color get textWarningLow300 => AllColors.orange700;
  @override
  Color get textInformationHigh700 => AllColors.blue200;
  @override
  Color get textInformationDefault500 => AllColors.blue400;
  @override
  Color get textInformationLow300 => AllColors.blue700;
  @override
  Color get textSuccessHigh700 => AllColors.green200;
  @override
  Color get textSuccessDefault500 => AllColors.green400;
  @override
  Color get textSuccessLow300 => AllColors.green700;
  @override
  Color get textDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get textDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get textDiscoveryLow300 => AllColors.violet700;
  @override
  Color get textQuietHigh700 => AllColors.teal200;
  @override
  Color get textQuietDefault500 => AllColors.teal400;
  @override
  Color get textQuietLow300 => AllColors.teal700;
  @override
  Color get shadowSm5 => const Color.fromARGB(13, 27, 31, 34);
  @override
  Color get shadowMd10 => const Color.fromARGB(26, 27, 31, 34);
  @override
  Color get shadowLg20 => const Color.fromARGB(51, 27, 31, 34);
  @override
  Color get shadowXl30 => const Color.fromARGB(77, 27, 31, 34);
  @override
  Color get shadow2xl40 => const Color.fromARGB(102, 33, 38, 44);
  @override
  Color get alphaWhite100 => AllColors.alphaGrey100;
  @override
  Color get alphaWhite90 => AllColors.alphaGrey90;
  @override
  Color get alphaWhite80 => AllColors.alphaGrey80;
  @override
  Color get alphaWhite70 => AllColors.alphaGrey70;
  @override
  Color get alphaWhite60 => AllColors.alphaGrey60;
  @override
  Color get alphaWhite50 => AllColors.alphaGrey50;
  @override
  Color get alphaWhite40 => AllColors.alphaGrey40;
  @override
  Color get alphaWhite30 => AllColors.alphaGrey30;
  @override
  Color get alphaWhite20 => AllColors.alphaGrey20;
  @override
  Color get alphaWhite10 => AllColors.alphaGrey10;
  @override
  Color get alphaWhite5 => AllColors.alphaGrey5;
  @override
  Color get alphaGrey100 => AllColors.alphaWhite100;
  @override
  Color get alphaGrey90 => AllColors.alphaWhite90;
  @override
  Color get alphaGrey80 => AllColors.alphaWhite80;
  @override
  Color get alphaGrey70 => AllColors.alphaWhite70;
  @override
  Color get alphaGrey60 => AllColors.alphaWhite60;
  @override
  Color get alphaGrey50 => AllColors.alphaWhite50;
  @override
  Color get alphaGrey40 => AllColors.alphaWhite40;
  @override
  Color get alphaGrey30 => AllColors.alphaWhite30;
  @override
  Color get alphaGrey20 => AllColors.alphaWhite20;
  @override
  Color get alphaGrey10 => AllColors.alphaWhite10;
  @override
  Color get alphaGrey5 => AllColors.alphaWhite5;
  @override
  Color get stateBrandLowestHover100 => BrandColor.brand800;
  @override
  Color get stateSuccessLowestHover100 => AllColors.green800;
  @override
  Color get stateWarningLowestHover100 => AllColors.orange800;
  @override
  Color get stateInformationLowestHover100 => AllColors.blue800;
  @override
  Color get stateDangerLowestHover100 => AllColors.red800;
  @override
  Color get stateDiscoveryLowestHover100 => AllColors.violet800;
  @override
  Color get stateQuietLowestHover100 => AllColors.teal800;
  @override
  Color get backgroundSurfacePrimaryWhite => AllColors.greyDark900;
  @override
  Color get backgroundSurfacePrimaryHoverGrey100 => AllColors.greyDark800;
  @override
  Color get backgroundSurfacePrimaryPressedGrey200 => AllColors.greyDark700;
  @override
  Color get backgroundSurfaceSecondaryWhite => AllColors.greyDark800;
  @override
  Color get backgroundSurfaceSecondaryHoverGrey100 => AllColors.greyDark700;
  @override
  Color get backgroundSurfaceSecondaryPressedGrey200 => AllColors.greyDark600;
  @override
  Color get backgroundSurfaceTertiaryGrey50 => AllColors.greyDark950;
  @override
  Color get backgroundSurfaceTertiaryHoverGrey100 => AllColors.greyDark900;
  @override
  Color get backgroundSurfaceTertiaryPressedGrey200 => AllColors.greyDark800;
  @override
  Color get backgroundBlanketPrimaryAlphaGrey50 => AllColors.alphaGrey60;
  @override
  Color get backgroundBlanketSecondaryAlphaGrey70 => AllColors.alphaGrey90;
  @override
  Color get strokeBaseWhite => AllColors.baseWhite;
  @override
  Color get strokeBaseGrey950 => AllColors.greyDark950;
  @override
  Color get strokeGreyHighest950 => AllColors.baseWhite;
  @override
  Color get strokeGreyHigh700 => AllColors.greyDark200;
  @override
  Color get strokeGreyDefault500 => AllColors.greyDark500;
  @override
  Color get strokeGreyLow300 => AllColors.greyDark300;
  @override
  Color get strokeGreyLowestWhite => AllColors.greyDark950;
  @override
  Color get strokeBrandHigh700 => BrandColor.brand300;
  @override
  Color get strokeBrandDefault500 => BrandColor.brand400;
  @override
  Color get strokeBrandLow300 => BrandColor.brand700;
  @override
  Color get strokeSuccessHigh700 => AllColors.green200;
  @override
  Color get strokeSuccessDefault500 => AllColors.green400;
  @override
  Color get strokeSuccessLow300 => AllColors.green700;
  @override
  Color get strokeWarningHigh700 => AllColors.orange200;
  @override
  Color get strokeWarningDefault500 => AllColors.orange400;
  @override
  Color get strokeWarningLow300 => AllColors.orange700;
  @override
  Color get strokeInformationHigh700 => AllColors.blue200;
  @override
  Color get strokeInformationDefault500 => AllColors.blue400;
  @override
  Color get strokeInformationLow300 => AllColors.blue700;
  @override
  Color get strokeDangerHigh700 => AllColors.red200;
  @override
  Color get strokeDangerDefault500 => AllColors.red400;
  @override
  Color get strokeDangerLow300 => AllColors.red700;
  @override
  Color get strokeDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get strokeDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get strokeDiscoveryLow300 => AllColors.violet700;
  @override
  Color get strokeQuietHigh700 => AllColors.teal200;
  @override
  Color get strokeQuietDefault500 => AllColors.teal400;
  @override
  Color get strokeQuietLow300 => AllColors.teal700;
}

class BrandColorDefault {
  BrandColorDefault._();
  BrandColorDefault._lerp({
    required this.brand950,
    required this.brand900,
    required this.brand800,
    required this.brand700,
    required this.brand600,
    required this.brand500,
    required this.brand400,
    required this.brand300,
    required this.brand200,
    required this.brand100,
    required this.brand50,
  });
  late final Color brand950;
  late final Color brand900;
  late final Color brand800;
  late final Color brand700;
  late final Color brand600;
  late final Color brand500;
  late final Color brand400;
  late final Color brand300;
  late final Color brand200;
  late final Color brand100;
  late final Color brand50;
  static BrandColorDefault _lerpResolve(BrandColorDefault a, BrandColorDefault b, double t) {
    return BrandColorDefault._lerp(
      brand950: b.brand950._lerp(a.brand950, t),
      brand900: b.brand900._lerp(a.brand900, t),
      brand800: b.brand800._lerp(a.brand800, t),
      brand700: b.brand700._lerp(a.brand700, t),
      brand600: b.brand600._lerp(a.brand600, t),
      brand500: b.brand500._lerp(a.brand500, t),
      brand400: b.brand400._lerp(a.brand400, t),
      brand300: b.brand300._lerp(a.brand300, t),
      brand200: b.brand200._lerp(a.brand200, t),
      brand100: b.brand100._lerp(a.brand100, t),
      brand50: b.brand50._lerp(a.brand50, t),
    );
  }
}

class _BrandColorBlue extends BrandColorDefault {
  _BrandColorBlue._() : super._();
  @override
  Color get brand950 => AllColors.blue950;
  @override
  Color get brand900 => AllColors.blue900;
  @override
  Color get brand800 => AllColors.blue800;
  @override
  Color get brand700 => AllColors.blue700;
  @override
  Color get brand600 => AllColors.blue600;
  @override
  Color get brand500 => AllColors.blue500;
  @override
  Color get brand400 => AllColors.blue400;
  @override
  Color get brand300 => AllColors.blue300;
  @override
  Color get brand200 => AllColors.blue200;
  @override
  Color get brand100 => AllColors.blue100;
  @override
  Color get brand50 => AllColors.blue50;
}

class _BrandColorPurple extends BrandColorDefault {
  _BrandColorPurple._() : super._();
  @override
  Color get brand950 => AllColors.purple950;
  @override
  Color get brand900 => AllColors.purple900;
  @override
  Color get brand800 => AllColors.purple800;
  @override
  Color get brand700 => AllColors.purple700;
  @override
  Color get brand600 => AllColors.purple600;
  @override
  Color get brand500 => AllColors.purple500;
  @override
  Color get brand400 => AllColors.purple400;
  @override
  Color get brand300 => AllColors.purple300;
  @override
  Color get brand200 => AllColors.purple200;
  @override
  Color get brand100 => AllColors.purple100;
  @override
  Color get brand50 => AllColors.purple50;
}

class _BrandColorViolet extends BrandColorDefault {
  _BrandColorViolet._() : super._();
  @override
  Color get brand950 => AllColors.violet950;
  @override
  Color get brand900 => AllColors.violet900;
  @override
  Color get brand800 => AllColors.violet800;
  @override
  Color get brand700 => AllColors.violet700;
  @override
  Color get brand600 => AllColors.violet600;
  @override
  Color get brand500 => AllColors.violet500;
  @override
  Color get brand400 => AllColors.violet400;
  @override
  Color get brand300 => AllColors.violet300;
  @override
  Color get brand200 => AllColors.violet200;
  @override
  Color get brand100 => AllColors.violet100;
  @override
  Color get brand50 => AllColors.violet50;
}

class _BrandColorOrange extends BrandColorDefault {
  _BrandColorOrange._() : super._();
  @override
  Color get brand950 => AllColors.orange950;
  @override
  Color get brand900 => AllColors.orange900;
  @override
  Color get brand800 => AllColors.orange800;
  @override
  Color get brand700 => AllColors.orange700;
  @override
  Color get brand600 => AllColors.orange600;
  @override
  Color get brand500 => AllColors.orange500;
  @override
  Color get brand400 => AllColors.orange400;
  @override
  Color get brand300 => AllColors.orange300;
  @override
  Color get brand200 => AllColors.orange200;
  @override
  Color get brand100 => AllColors.orange100;
  @override
  Color get brand50 => AllColors.orange50;
}

class SpacingDefault {
  SpacingDefault._();
  SpacingDefault._lerp({
    required this.space0,
    required this.space2,
    required this.space4,
    required this.space6,
    required this.space8,
    required this.space12,
    required this.space16,
    required this.space20,
    required this.space24,
    required this.space32,
    required this.space40,
    required this.space48,
    required this.space64,
    required this.space72,
    required this.space80,
    required this.space96,
    required this.space124,
    required this.space256,
    required this.space320,
    required this.space384,
    required this.space480,
    required this.space560,
    required this.space640,
    required this.space720,
    required this.space1024,
    required this.space1280,
    required this.space1440,
    required this.space1600,
    required this.space1920,
  });
  late final double space0;
  late final double space2;
  late final double space4;
  late final double space6;
  late final double space8;
  late final double space12;
  late final double space16;
  late final double space20;
  late final double space24;
  late final double space32;
  late final double space40;
  late final double space48;
  late final double space64;
  late final double space72;
  late final double space80;
  late final double space96;
  late final double space124;
  late final double space256;
  late final double space320;
  late final double space384;
  late final double space480;
  late final double space560;
  late final double space640;
  late final double space720;
  late final double space1024;
  late final double space1280;
  late final double space1440;
  late final double space1600;
  late final double space1920;
  static SpacingDefault _lerpResolve(SpacingDefault a, SpacingDefault b, double t) {
    return SpacingDefault._lerp(
      space0: b.space0._lerp(a.space0, t),
      space2: b.space2._lerp(a.space2, t),
      space4: b.space4._lerp(a.space4, t),
      space6: b.space6._lerp(a.space6, t),
      space8: b.space8._lerp(a.space8, t),
      space12: b.space12._lerp(a.space12, t),
      space16: b.space16._lerp(a.space16, t),
      space20: b.space20._lerp(a.space20, t),
      space24: b.space24._lerp(a.space24, t),
      space32: b.space32._lerp(a.space32, t),
      space40: b.space40._lerp(a.space40, t),
      space48: b.space48._lerp(a.space48, t),
      space64: b.space64._lerp(a.space64, t),
      space72: b.space72._lerp(a.space72, t),
      space80: b.space80._lerp(a.space80, t),
      space96: b.space96._lerp(a.space96, t),
      space124: b.space124._lerp(a.space124, t),
      space256: b.space256._lerp(a.space256, t),
      space320: b.space320._lerp(a.space320, t),
      space384: b.space384._lerp(a.space384, t),
      space480: b.space480._lerp(a.space480, t),
      space560: b.space560._lerp(a.space560, t),
      space640: b.space640._lerp(a.space640, t),
      space720: b.space720._lerp(a.space720, t),
      space1024: b.space1024._lerp(a.space1024, t),
      space1280: b.space1280._lerp(a.space1280, t),
      space1440: b.space1440._lerp(a.space1440, t),
      space1600: b.space1600._lerp(a.space1600, t),
      space1920: b.space1920._lerp(a.space1920, t),
    );
  }
}

class _SpacingMode1 extends SpacingDefault {
  _SpacingMode1._() : super._();
  @override
  double get space0 => 0;
  @override
  double get space2 => 2;
  @override
  double get space4 => 4;
  @override
  double get space6 => 6;
  @override
  double get space8 => 8;
  @override
  double get space12 => 12;
  @override
  double get space16 => 16;
  @override
  double get space20 => 20;
  @override
  double get space24 => 24;
  @override
  double get space32 => 32;
  @override
  double get space40 => 40;
  @override
  double get space48 => 48;
  @override
  double get space64 => 64;
  @override
  double get space72 => 72;
  @override
  double get space80 => 80;
  @override
  double get space96 => 96;
  @override
  double get space124 => 124;
  @override
  double get space256 => 256;
  @override
  double get space320 => 320;
  @override
  double get space384 => 384;
  @override
  double get space480 => 480;
  @override
  double get space560 => 560;
  @override
  double get space640 => 640;
  @override
  double get space720 => 720;
  @override
  double get space1024 => 1024;
  @override
  double get space1280 => 1280;
  @override
  double get space1440 => 1440;
  @override
  double get space1600 => 1600;
  @override
  double get space1920 => 1920;
}

class CornerDefault {
  CornerDefault._();
  CornerDefault._lerp({
    required this.radius0,
    required this.radius2,
    required this.radius4,
    required this.radius6,
    required this.radius8,
    required this.radius12,
    required this.radius16,
    required this.radius20,
    required this.radius24,
    required this.radius32,
    required this.radiusFull,
  });
  late final double radius0;
  late final double radius2;
  late final double radius4;
  late final double radius6;
  late final double radius8;
  late final double radius12;
  late final double radius16;
  late final double radius20;
  late final double radius24;
  late final double radius32;
  late final double radiusFull;
  static CornerDefault _lerpResolve(CornerDefault a, CornerDefault b, double t) {
    return CornerDefault._lerp(
      radius0: b.radius0._lerp(a.radius0, t),
      radius2: b.radius2._lerp(a.radius2, t),
      radius4: b.radius4._lerp(a.radius4, t),
      radius6: b.radius6._lerp(a.radius6, t),
      radius8: b.radius8._lerp(a.radius8, t),
      radius12: b.radius12._lerp(a.radius12, t),
      radius16: b.radius16._lerp(a.radius16, t),
      radius20: b.radius20._lerp(a.radius20, t),
      radius24: b.radius24._lerp(a.radius24, t),
      radius32: b.radius32._lerp(a.radius32, t),
      radiusFull: b.radiusFull._lerp(a.radiusFull, t),
    );
  }
}

class _CornerClassic extends CornerDefault {
  _CornerClassic._() : super._();
  @override
  double get radius0 => Spacing.space0;
  @override
  double get radius2 => Spacing.space2;
  @override
  double get radius4 => Spacing.space4;
  @override
  double get radius6 => Spacing.space6;
  @override
  double get radius8 => Spacing.space8;
  @override
  double get radius12 => Spacing.space12;
  @override
  double get radius16 => Spacing.space16;
  @override
  double get radius20 => Spacing.space20;
  @override
  double get radius24 => Spacing.space24;
  @override
  double get radius32 => Spacing.space32;
  @override
  double get radiusFull => 999999;
}

class _CornerSharp extends CornerDefault {
  _CornerSharp._() : super._();
  @override
  double get radius0 => Spacing.space0;
  @override
  double get radius2 => Spacing.space0;
  @override
  double get radius4 => Spacing.space0;
  @override
  double get radius6 => Spacing.space0;
  @override
  double get radius8 => Spacing.space0;
  @override
  double get radius12 => Spacing.space0;
  @override
  double get radius16 => Spacing.space0;
  @override
  double get radius20 => Spacing.space0;
  @override
  double get radius24 => Spacing.space0;
  @override
  double get radius32 => Spacing.space0;
  @override
  double get radiusFull => Spacing.space0;
}

class FontFamilyDefault {
  FontFamilyDefault._();
  FontFamilyDefault._lerp({required this.fonts});
  late final String fonts;
  static FontFamilyDefault _lerpResolve(FontFamilyDefault a, FontFamilyDefault b, double t) {
    return FontFamilyDefault._lerp(fonts: b.fonts._lerp(a.fonts, t));
  }
}

class _FontFamilyInter extends FontFamilyDefault {
  _FontFamilyInter._() : super._();
  @override
  String get fonts => 'Inter';
}

class _FontFamilyBarlow extends FontFamilyDefault {
  _FontFamilyBarlow._() : super._();
  @override
  String get fonts => 'Barlow';
}

class _FontFamilyManrope extends FontFamilyDefault {
  _FontFamilyManrope._() : super._();
  @override
  String get fonts => 'Manrope';
}

class _FontFamilyRobotoMono extends FontFamilyDefault {
  _FontFamilyRobotoMono._() : super._();
  @override
  String get fonts => 'RobotoMono';
}

class ColorStyle {
  ColorStyle._();

  static final mcdonaldSMcDrink1 = const Color.fromARGB(255, 255, 255, 255);
  static final mcdonaldSMcDrink3 = const Color.fromARGB(255, 255, 255, 255);
  static final mcdonaldSMcDrink2 = const Color.fromARGB(255, 255, 255, 255);
}

class Style extends TextStyle {
  const Style._({
    super.inherit = true,
    super.color,
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.fontFamilyFallback,
    super.overflow,
    super.fontFamily,
  });

  Style tint(Color? color) => Style._style(copyWith(color: color));

  static FontWeight _parseVariableWeight(double parse) {
    if (parse <= 100) {
      return FontWeight.w100;
    } else if (parse <= 200) {
      return FontWeight.w200;
    } else if (parse <= 300) {
      return FontWeight.w300;
    } else if (parse <= 400) {
      return FontWeight.w400;
    } else if (parse <= 500) {
      return FontWeight.w500;
    } else if (parse <= 600) {
      return FontWeight.w600;
    } else if (parse <= 700) {
      return FontWeight.w700;
    } else if (parse <= 800) {
      return FontWeight.w800;
    } else {
      return FontWeight.w900;
    }
  }

  static FontStyle _parseStringStyle(String parse) {
    return parse.contains("italic") ? FontStyle.italic : FontStyle.normal;
  }

  factory Style._style(TextStyle textStyle) {
    return Style._(
      inherit: textStyle.inherit,
      color: textStyle.color,
      backgroundColor: textStyle.backgroundColor,
      fontSize: textStyle.fontSize,
      fontWeight: textStyle.fontWeight,
      fontStyle: textStyle.fontStyle,
      letterSpacing: textStyle.letterSpacing,
      wordSpacing: textStyle.wordSpacing,
      textBaseline: textStyle.textBaseline,
      height: textStyle.height,
      leadingDistribution: textStyle.leadingDistribution,
      locale: textStyle.locale,
      foreground: textStyle.foreground,
      background: textStyle.background,
      shadows: textStyle.shadows,
      fontFeatures: textStyle.fontFeatures,
      fontVariations: textStyle.fontVariations,
      decoration: textStyle.decoration,
      decorationColor: textStyle.decorationColor,
      decorationStyle: textStyle.decorationStyle,
      decorationThickness: textStyle.decorationThickness,
      debugLabel: textStyle.debugLabel,
      fontFamily: textStyle.fontFamily,
      fontFamilyFallback: textStyle.fontFamilyFallback,
      overflow: textStyle.overflow,
    );
  }
}

class Styles {
  const Styles._();

  static const _parent = TextStyle(debugLabel: '', leadingDistribution: TextLeadingDistribution.even);

  static final typographyH1Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH1,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH1Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH1,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH1SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH1,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH1Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH1,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH2Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH2,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH2Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH2,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH2SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH2,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH2Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH2,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH3Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH3,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH3Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH3,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH3SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH3,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH3Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH3,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH4Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH4,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH4Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH4,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH4SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH4,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH4Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH4,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH5Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH5,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH5Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH5,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH5SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH5,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH5Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH5,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH6Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH6,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH6Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH6,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH6SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH6,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH6Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH6,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH7Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH7,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH7Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH7,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH7SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH7,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH7Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH7,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH8Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH8,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH8Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH8,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH8SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH8,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH8Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH8,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH9Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH9,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH9Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH9,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH9SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH9,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH9Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH9,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH10Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH10,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH10Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH10,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH10SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH10,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH10Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH10,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH11Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH11,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH11Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH11,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH11SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH11,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH11Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH11,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );

  static final typographyH12Regular = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH12,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightRegular400),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
  );

  static final typographyH12Medium = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH12,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightMedium500),
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
  );

  static final typographyH12SemiBold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH12,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightSemiBold600),
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
    ),
  );

  static final typographyH12Bold = Style._style(
    _parent.copyWith(
      fontFamily: Typography.fontFamilyFont,
      fontSize: Typography.fontSizeH12,
      decoration: TextDecoration.none,
      fontStyle: Style._parseStringStyle(Typography.fontWeightBold700),
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
    ),
  );
}

class Shadow extends BoxShadow {
  const Shadow._({super.color, super.offset, super.blurRadius, super.spreadRadius = 0.0, super.blurStyle});
}

class Shadows {
  const Shadows._();

  static final List<Shadow> shadowSm = [Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 4, spreadRadius: 0, blurStyle: BlurStyle.normal)];

  static final List<Shadow> shadowMd = [
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 4, spreadRadius: 0, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> shadowLg = [
    Shadow._(color: Theme.shadowMd10, offset: Offset(0, 4), blurRadius: 8, spreadRadius: -2, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 2), blurRadius: 4, spreadRadius: -2, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> shadowXl = [
    Shadow._(color: Theme.shadowMd10, offset: Offset(0, 12), blurRadius: 16, spreadRadius: -6, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 2), blurRadius: 4, spreadRadius: -2, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> shadow2xl = [
    Shadow._(color: Theme.shadowMd10, offset: Offset(0, 18), blurRadius: 24, spreadRadius: -6, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 6), blurRadius: 8, spreadRadius: -4, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> shadow3xl = [
    Shadow._(color: Theme.shadowXl30, offset: Offset(0, 24), blurRadius: 48, spreadRadius: -10, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 6), blurRadius: 8, spreadRadius: -4, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusBrand = [
    Shadow._(color: Theme.stateBrandDefault500, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusGray = [
    Shadow._(color: Theme.stateGreyHighest900, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusSuccess = [
    Shadow._(color: Theme.stateSuccessDefault500, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusWarning = [
    Shadow._(color: Theme.stateWarningDefault500, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusInformation = [
    Shadow._(color: Theme.stateInformationDefault500, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];

  static final List<Shadow> focusDanger = [
    Shadow._(color: Theme.stateDangerDefault500, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.alphaWhite80, offset: Offset(0, 0), blurRadius: 0, spreadRadius: 4, blurStyle: BlurStyle.normal),
    Shadow._(color: Theme.shadowSm5, offset: Offset(0, 1), blurRadius: 2, spreadRadius: 0, blurStyle: BlurStyle.normal),
  ];
}

extension _LerpDouble on double {
  double _lerp(double b, double t) {
    return lerpDouble(this, b, t) ?? this;
  }
}

extension _LerpColor on Color {
  Color _lerp(Color b, double t) {
    return Color.lerp(this, b, t) ?? this;
  }
}

extension _LerpString on String {
  String _lerp(String b, double t) {
    return t < 0.5 ? b : this;
  }
}

extension _LerpBoolean on bool {
  bool _lerp(bool b, double t) {
    return t < 0.5 ? b : this;
  }
}

final class AppTheme {
  static TypographyDefault get typography => Typography;
  static AllColorsDefault get allColors => AllColors;
  static ThemeDefault get theme => Theme;
  static BrandColorDefault get brandColor => BrandColor;
  static SpacingDefault get spacing => Spacing;
  static CornerDefault get corner => Corner;
  static FontFamilyDefault get fontFamily => FontFamily;
}

ThemeDefault get AppColors => AppTheme.theme;
CornerDefault get AppCorner => AppTheme.corner;
SpacingDefault get AppSpacing => AppTheme.spacing;
typedef AppTextStyles = Styles;
typedef AppShadows = Shadows;
