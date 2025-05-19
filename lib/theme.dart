// ignore_for_file: overridden_fields, unused_element, non_constant_identifier_names

/// The all getter and classes with variables and functions statics:
/// [AppTextStyles], [Shadows], [ColorStyle], [FigmaTheme], [Typography], [AllColors], [Theme], [BrandColor], [Spacing], [Corner], [FontFamily]
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
/// *IMPORTANT*: You need a [FigmaTheme] on top of your Material so that colors, sizes, strings, booleans are rebuilt when changed.
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
/// To change the MODE of [Typography] just use the function [FigmaTheme.TypographyDefault] passing the enum [TypographyTypes]
///
/// [TypographyDefault] is a sealed class that contains all the variables of the collection Typography
/// [_TypographyMode1] is a class that contains all the variables of the collection Typography in the mode Mode 1
///
///
/// The variable [AllColors] is a getter that fetches the style[AllColorsDefault] based on the set `MODE`[AllColorsTypes]
/// To change the MODE of [AllColors] just use the function [FigmaTheme.AllColorsDefault] passing the enum [AllColorsTypes]
///
/// [AllColorsDefault] is a sealed class that contains all the variables of the collection All Colors
/// [_AllColorsMode1] is a class that contains all the variables of the collection All Colors in the mode Mode 1
///
///
/// The variable [Theme] is a getter that fetches the style[ThemeDefault] based on the set `MODE`[ThemeTypes]
/// To change the MODE of [Theme] just use the function [FigmaTheme.ThemeDefault] passing the enum [ThemeTypes]
///
/// [ThemeDefault] is a sealed class that contains all the variables of the collection Theme
/// [_ThemeLight] is a class that contains all the variables of the collection Theme in the mode Light
/// [_ThemeDark] is a class that contains all the variables of the collection Theme in the mode Dark
///
///
/// The variable [BrandColor] is a getter that fetches the style[BrandColorDefault] based on the set `MODE`[BrandColorTypes]
/// To change the MODE of [BrandColor] just use the function [FigmaTheme.BrandColorDefault] passing the enum [BrandColorTypes]
///
/// [BrandColorDefault] is a sealed class that contains all the variables of the collection Brand color
/// [_BrandColorBlue] is a class that contains all the variables of the collection Brand color in the mode Blue
/// [_BrandColorPurple] is a class that contains all the variables of the collection Brand color in the mode Purple
/// [_BrandColorViolet] is a class that contains all the variables of the collection Brand color in the mode Violet
/// [_BrandColorOrange] is a class that contains all the variables of the collection Brand color in the mode Orange
///
///
/// The variable [Spacing] is a getter that fetches the style[SpacingDefault] based on the set `MODE`[SpacingTypes]
/// To change the MODE of [Spacing] just use the function [FigmaTheme.SpacingDefault] passing the enum [SpacingTypes]
///
/// [SpacingDefault] is a sealed class that contains all the variables of the collection Spacing
/// [_SpacingMode1] is a class that contains all the variables of the collection Spacing in the mode Mode 1
///
///
/// The variable [Corner] is a getter that fetches the style[CornerDefault] based on the set `MODE`[CornerTypes]
/// To change the MODE of [Corner] just use the function [FigmaTheme.CornerDefault] passing the enum [CornerTypes]
///
/// [CornerDefault] is a sealed class that contains all the variables of the collection Corner
/// [_CornerClassic] is a class that contains all the variables of the collection Corner in the mode Classic
/// [_CornerSharp] is a class that contains all the variables of the collection Corner in the mode Sharp
///
///
/// The variable [FontFamily] is a getter that fetches the style[FontFamilyDefault] based on the set `MODE`[FontFamilyTypes]
/// To change the MODE of [FontFamily] just use the function [FigmaTheme.FontFamilyDefault] passing the enum [FontFamilyTypes]
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

class FigmaTheme extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const FigmaTheme({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
  });

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
  State<FigmaTheme> createState() => _FigmaThemeState();
}

class _FigmaThemeState extends State<FigmaTheme> with TickerProviderStateMixin {
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
    _animationControllerTypographyDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerAllColorsDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerThemeDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerBrandColorDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerSpacingDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerCornerDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationControllerFontFamilyDefault = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
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
    return TypographyDefault._lerpResolve(
      _Typography.value,
      _TypographyLast,
      _animationControllerTypographyDefault?.value ?? 1,
    );
  }
  return _Typography.value;
}

ValueNotifier<AllColorsDefault> _AllColors = ValueNotifier(_AllColorsMode1._());
AllColorsDefault _AllColorsLast = _AllColorsMode1._();

enum AllColorsTypes { mode1 }

AllColorsDefault get AllColors {
  if (_animationControllerAllColorsDefault?.isAnimating ?? false) {
    return AllColorsDefault._lerpResolve(
      _AllColors.value,
      _AllColorsLast,
      _animationControllerAllColorsDefault?.value ?? 1,
    );
  }
  return _AllColors.value;
}

ValueNotifier<ThemeDefault> _Theme = ValueNotifier(_ThemeLight._());
ThemeDefault _ThemeLast = _ThemeLight._();

enum ThemeTypes { light, dark }

ThemeDefault get Theme {
  if (_animationControllerThemeDefault?.isAnimating ?? false) {
    return ThemeDefault._lerpResolve(
      _Theme.value,
      _ThemeLast,
      _animationControllerThemeDefault?.value ?? 1,
    );
  }
  return _Theme.value;
}

ValueNotifier<BrandColorDefault> _BrandColor = ValueNotifier(_BrandColorBlue._());
BrandColorDefault _BrandColorLast = _BrandColorBlue._();

enum BrandColorTypes { blue, purple, violet, orange }

BrandColorDefault get BrandColor {
  if (_animationControllerBrandColorDefault?.isAnimating ?? false) {
    return BrandColorDefault._lerpResolve(
      _BrandColor.value,
      _BrandColorLast,
      _animationControllerBrandColorDefault?.value ?? 1,
    );
  }
  return _BrandColor.value;
}

ValueNotifier<SpacingDefault> _Spacing = ValueNotifier(_SpacingMode1._());
SpacingDefault _SpacingLast = _SpacingMode1._();

enum SpacingTypes { mode1 }

SpacingDefault get Spacing {
  if (_animationControllerSpacingDefault?.isAnimating ?? false) {
    return SpacingDefault._lerpResolve(
      _Spacing.value,
      _SpacingLast,
      _animationControllerSpacingDefault?.value ?? 1,
    );
  }
  return _Spacing.value;
}

ValueNotifier<CornerDefault> _Corner = ValueNotifier(_CornerClassic._());
CornerDefault _CornerLast = _CornerClassic._();

enum CornerTypes { classic, sharp }

CornerDefault get Corner {
  if (_animationControllerCornerDefault?.isAnimating ?? false) {
    return CornerDefault._lerpResolve(
      _Corner.value,
      _CornerLast,
      _animationControllerCornerDefault?.value ?? 1,
    );
  }
  return _Corner.value;
}

ValueNotifier<FontFamilyDefault> _FontFamily = ValueNotifier(_FontFamilyInter._());
FontFamilyDefault _FontFamilyLast = _FontFamilyInter._();

enum FontFamilyTypes { inter, barlow, manrope, robotoMono }

FontFamilyDefault get FontFamily {
  if (_animationControllerFontFamilyDefault?.isAnimating ?? false) {
    return FontFamilyDefault._lerpResolve(
      _FontFamily.value,
      _FontFamilyLast,
      _animationControllerFontFamilyDefault?.value ?? 1,
    );
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
    required this.tokenColorsStateBaseWhite,
    required this.tokenColorsStateBaseGrey950,
    required this.tokenColorsStateGreyHighest900,
    required this.tokenColorsStateGreyHighestHover800,
    required this.tokenColorsStateGreyHigh700,
    required this.tokenColorsStateGreyDefault500,
    required this.tokenColorsStateGreyDefaultHover400,
    required this.tokenColorsStateGreyLow300,
    required this.tokenColorsStateGreyLowest50,
    required this.tokenColorsStateGreyLowestHover100,
    required this.tokenColorsStateBrandHighest950,
    required this.tokenColorsStateBrandHigh700,
    required this.tokenColorsStateBrandDefault500,
    required this.tokenColorsStateBrandLow200,
    required this.tokenColorsStateBrandLowest50,
    required this.tokenColorsStateDangerHighest950,
    required this.tokenColorsStateDangerHigh700,
    required this.tokenColorsStateDangerDefault500,
    required this.tokenColorsStateDangerLow200,
    required this.tokenColorsStateDangerLowest50,
    required this.tokenColorsStateWarningHighest950,
    required this.tokenColorsStateWarningHigh700,
    required this.tokenColorsStateWarningDefault500,
    required this.tokenColorsStateWarningLow200,
    required this.tokenColorsStateWarningLowest50,
    required this.tokenColorsStateInformationHighest950,
    required this.tokenColorsStateInformationHigh700,
    required this.tokenColorsStateInformationDefault500,
    required this.tokenColorsStateInformationLow200,
    required this.tokenColorsStateInformationLowest50,
    required this.tokenColorsStateSuccessHighest950,
    required this.tokenColorsStateSuccessHigh700,
    required this.tokenColorsStateSuccessDefault500,
    required this.tokenColorsStateSuccessLow200,
    required this.tokenColorsStateSuccessLowest50,
    required this.tokenColorsStateDiscoveryHighest950,
    required this.tokenColorsStateDiscoveryHigh700,
    required this.tokenColorsStateDiscoveryDefault500,
    required this.tokenColorsStateDiscoveryLow200,
    required this.tokenColorsStateDiscoveryLowest50,
    required this.tokenColorsStateQuietHighest950,
    required this.tokenColorsStateQuietHigh700,
    required this.tokenColorsStateQuietDefault500,
    required this.tokenColorsStateQuietLow200,
    required this.tokenColorsStateQuietLowest50,
    required this.tokenColorsTextBaseWhite,
    required this.tokenColorsTextBaseGrey950,
    required this.tokenColorsTextGreyHighest950,
    required this.tokenColorsTextGreyHigh700,
    required this.tokenColorsTextGreyDefault500,
    required this.tokenColorsTextGreyLow300,
    required this.tokenColorsTextGreyLowestWhite,
    required this.tokenColorsTextBrandHigh700,
    required this.tokenColorsTextBrandDefault500,
    required this.tokenColorsTextBrandLow300,
    required this.tokenColorsTextDangerHigh700,
    required this.tokenColorsTextDangerDefault500,
    required this.tokenColorsTextDangerLow300,
    required this.tokenColorsTextWarningHigh700,
    required this.tokenColorsTextWarningDefault500,
    required this.tokenColorsTextWarningLow300,
    required this.tokenColorsTextInformationHigh700,
    required this.tokenColorsTextInformationDefault500,
    required this.tokenColorsTextInformationLow300,
    required this.tokenColorsTextSuccessHigh700,
    required this.tokenColorsTextSuccessDefault500,
    required this.tokenColorsTextSuccessLow300,
    required this.tokenColorsTextDiscoveryHigh700,
    required this.tokenColorsTextDiscoveryDefault500,
    required this.tokenColorsTextDiscoveryLow300,
    required this.tokenColorsTextQuietHigh700,
    required this.tokenColorsTextQuietDefault500,
    required this.tokenColorsTextQuietLow300,
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
    required this.tokenColorsStateBrandLowestHover100,
    required this.tokenColorsStateSuccessLowestHover100,
    required this.tokenColorsStateWarningLowestHover100,
    required this.tokenColorsStateInformationLowestHover100,
    required this.tokenColorsStateDangerLowestHover100,
    required this.tokenColorsStateDiscoveryLowestHover100,
    required this.tokenColorsStateQuietLowestHover100,
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
    required this.tokenColorsStrokeBaseWhite,
    required this.tokenColorsStrokeBaseGrey950,
    required this.tokenColorsStrokeGreyHighest950,
    required this.tokenColorsStrokeGreyHigh700,
    required this.tokenColorsStrokeGreyDefault500,
    required this.tokenColorsStrokeGreyLow300,
    required this.tokenColorsStrokeGreyLowestWhite,
    required this.tokenColorsStrokeBrandHigh700,
    required this.tokenColorsStrokeBrandDefault500,
    required this.tokenColorsStrokeBrandLow300,
    required this.tokenColorsStrokeSuccessHigh700,
    required this.tokenColorsStrokeSuccessDefault500,
    required this.tokenColorsStrokeSuccessLow300,
    required this.tokenColorsStrokeWarningHigh700,
    required this.tokenColorsStrokeWarningDefault500,
    required this.tokenColorsStrokeWarningLow300,
    required this.tokenColorsStrokeInformationHigh700,
    required this.tokenColorsStrokeInformationDefault500,
    required this.tokenColorsStrokeInformationLow300,
    required this.tokenColorsStrokeDangerHigh700,
    required this.tokenColorsStrokeDangerDefault500,
    required this.tokenColorsStrokeDangerLow300,
    required this.tokenColorsStrokeDiscoveryHigh700,
    required this.tokenColorsStrokeDiscoveryDefault500,
    required this.tokenColorsStrokeDiscoveryLow300,
    required this.tokenColorsStrokeQuietHigh700,
    required this.tokenColorsStrokeQuietDefault500,
    required this.tokenColorsStrokeQuietLow300,
  });
  late final Color tokenColorsStateBaseWhite;
  late final Color tokenColorsStateBaseGrey950;
  late final Color tokenColorsStateGreyHighest900;
  late final Color tokenColorsStateGreyHighestHover800;
  late final Color tokenColorsStateGreyHigh700;
  late final Color tokenColorsStateGreyDefault500;
  late final Color tokenColorsStateGreyDefaultHover400;
  late final Color tokenColorsStateGreyLow300;
  late final Color tokenColorsStateGreyLowest50;
  late final Color tokenColorsStateGreyLowestHover100;
  late final Color tokenColorsStateBrandHighest950;
  late final Color tokenColorsStateBrandHigh700;
  late final Color tokenColorsStateBrandDefault500;
  late final Color tokenColorsStateBrandLow200;
  late final Color tokenColorsStateBrandLowest50;
  late final Color tokenColorsStateDangerHighest950;
  late final Color tokenColorsStateDangerHigh700;
  late final Color tokenColorsStateDangerDefault500;
  late final Color tokenColorsStateDangerLow200;
  late final Color tokenColorsStateDangerLowest50;
  late final Color tokenColorsStateWarningHighest950;
  late final Color tokenColorsStateWarningHigh700;
  late final Color tokenColorsStateWarningDefault500;
  late final Color tokenColorsStateWarningLow200;
  late final Color tokenColorsStateWarningLowest50;
  late final Color tokenColorsStateInformationHighest950;
  late final Color tokenColorsStateInformationHigh700;
  late final Color tokenColorsStateInformationDefault500;
  late final Color tokenColorsStateInformationLow200;
  late final Color tokenColorsStateInformationLowest50;
  late final Color tokenColorsStateSuccessHighest950;
  late final Color tokenColorsStateSuccessHigh700;
  late final Color tokenColorsStateSuccessDefault500;
  late final Color tokenColorsStateSuccessLow200;
  late final Color tokenColorsStateSuccessLowest50;
  late final Color tokenColorsStateDiscoveryHighest950;
  late final Color tokenColorsStateDiscoveryHigh700;
  late final Color tokenColorsStateDiscoveryDefault500;
  late final Color tokenColorsStateDiscoveryLow200;
  late final Color tokenColorsStateDiscoveryLowest50;
  late final Color tokenColorsStateQuietHighest950;
  late final Color tokenColorsStateQuietHigh700;
  late final Color tokenColorsStateQuietDefault500;
  late final Color tokenColorsStateQuietLow200;
  late final Color tokenColorsStateQuietLowest50;
  late final Color tokenColorsTextBaseWhite;
  late final Color tokenColorsTextBaseGrey950;
  late final Color tokenColorsTextGreyHighest950;
  late final Color tokenColorsTextGreyHigh700;
  late final Color tokenColorsTextGreyDefault500;
  late final Color tokenColorsTextGreyLow300;
  late final Color tokenColorsTextGreyLowestWhite;
  late final Color tokenColorsTextBrandHigh700;
  late final Color tokenColorsTextBrandDefault500;
  late final Color tokenColorsTextBrandLow300;
  late final Color tokenColorsTextDangerHigh700;
  late final Color tokenColorsTextDangerDefault500;
  late final Color tokenColorsTextDangerLow300;
  late final Color tokenColorsTextWarningHigh700;
  late final Color tokenColorsTextWarningDefault500;
  late final Color tokenColorsTextWarningLow300;
  late final Color tokenColorsTextInformationHigh700;
  late final Color tokenColorsTextInformationDefault500;
  late final Color tokenColorsTextInformationLow300;
  late final Color tokenColorsTextSuccessHigh700;
  late final Color tokenColorsTextSuccessDefault500;
  late final Color tokenColorsTextSuccessLow300;
  late final Color tokenColorsTextDiscoveryHigh700;
  late final Color tokenColorsTextDiscoveryDefault500;
  late final Color tokenColorsTextDiscoveryLow300;
  late final Color tokenColorsTextQuietHigh700;
  late final Color tokenColorsTextQuietDefault500;
  late final Color tokenColorsTextQuietLow300;
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
  late final Color tokenColorsStateBrandLowestHover100;
  late final Color tokenColorsStateSuccessLowestHover100;
  late final Color tokenColorsStateWarningLowestHover100;
  late final Color tokenColorsStateInformationLowestHover100;
  late final Color tokenColorsStateDangerLowestHover100;
  late final Color tokenColorsStateDiscoveryLowestHover100;
  late final Color tokenColorsStateQuietLowestHover100;
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
  late final Color tokenColorsStrokeBaseWhite;
  late final Color tokenColorsStrokeBaseGrey950;
  late final Color tokenColorsStrokeGreyHighest950;
  late final Color tokenColorsStrokeGreyHigh700;
  late final Color tokenColorsStrokeGreyDefault500;
  late final Color tokenColorsStrokeGreyLow300;
  late final Color tokenColorsStrokeGreyLowestWhite;
  late final Color tokenColorsStrokeBrandHigh700;
  late final Color tokenColorsStrokeBrandDefault500;
  late final Color tokenColorsStrokeBrandLow300;
  late final Color tokenColorsStrokeSuccessHigh700;
  late final Color tokenColorsStrokeSuccessDefault500;
  late final Color tokenColorsStrokeSuccessLow300;
  late final Color tokenColorsStrokeWarningHigh700;
  late final Color tokenColorsStrokeWarningDefault500;
  late final Color tokenColorsStrokeWarningLow300;
  late final Color tokenColorsStrokeInformationHigh700;
  late final Color tokenColorsStrokeInformationDefault500;
  late final Color tokenColorsStrokeInformationLow300;
  late final Color tokenColorsStrokeDangerHigh700;
  late final Color tokenColorsStrokeDangerDefault500;
  late final Color tokenColorsStrokeDangerLow300;
  late final Color tokenColorsStrokeDiscoveryHigh700;
  late final Color tokenColorsStrokeDiscoveryDefault500;
  late final Color tokenColorsStrokeDiscoveryLow300;
  late final Color tokenColorsStrokeQuietHigh700;
  late final Color tokenColorsStrokeQuietDefault500;
  late final Color tokenColorsStrokeQuietLow300;
  static ThemeDefault _lerpResolve(ThemeDefault a, ThemeDefault b, double t) {
    return ThemeDefault._lerp(
      tokenColorsStateBaseWhite: b.tokenColorsStateBaseWhite._lerp(a.tokenColorsStateBaseWhite, t),
      tokenColorsStateBaseGrey950: b.tokenColorsStateBaseGrey950._lerp(a.tokenColorsStateBaseGrey950, t),
      tokenColorsStateGreyHighest900: b.tokenColorsStateGreyHighest900._lerp(a.tokenColorsStateGreyHighest900, t),
      tokenColorsStateGreyHighestHover800: b.tokenColorsStateGreyHighestHover800._lerp(a.tokenColorsStateGreyHighestHover800, t),
      tokenColorsStateGreyHigh700: b.tokenColorsStateGreyHigh700._lerp(a.tokenColorsStateGreyHigh700, t),
      tokenColorsStateGreyDefault500: b.tokenColorsStateGreyDefault500._lerp(a.tokenColorsStateGreyDefault500, t),
      tokenColorsStateGreyDefaultHover400: b.tokenColorsStateGreyDefaultHover400._lerp(a.tokenColorsStateGreyDefaultHover400, t),
      tokenColorsStateGreyLow300: b.tokenColorsStateGreyLow300._lerp(a.tokenColorsStateGreyLow300, t),
      tokenColorsStateGreyLowest50: b.tokenColorsStateGreyLowest50._lerp(a.tokenColorsStateGreyLowest50, t),
      tokenColorsStateGreyLowestHover100: b.tokenColorsStateGreyLowestHover100._lerp(a.tokenColorsStateGreyLowestHover100, t),
      tokenColorsStateBrandHighest950: b.tokenColorsStateBrandHighest950._lerp(a.tokenColorsStateBrandHighest950, t),
      tokenColorsStateBrandHigh700: b.tokenColorsStateBrandHigh700._lerp(a.tokenColorsStateBrandHigh700, t),
      tokenColorsStateBrandDefault500: b.tokenColorsStateBrandDefault500._lerp(a.tokenColorsStateBrandDefault500, t),
      tokenColorsStateBrandLow200: b.tokenColorsStateBrandLow200._lerp(a.tokenColorsStateBrandLow200, t),
      tokenColorsStateBrandLowest50: b.tokenColorsStateBrandLowest50._lerp(a.tokenColorsStateBrandLowest50, t),
      tokenColorsStateDangerHighest950: b.tokenColorsStateDangerHighest950._lerp(a.tokenColorsStateDangerHighest950, t),
      tokenColorsStateDangerHigh700: b.tokenColorsStateDangerHigh700._lerp(a.tokenColorsStateDangerHigh700, t),
      tokenColorsStateDangerDefault500: b.tokenColorsStateDangerDefault500._lerp(a.tokenColorsStateDangerDefault500, t),
      tokenColorsStateDangerLow200: b.tokenColorsStateDangerLow200._lerp(a.tokenColorsStateDangerLow200, t),
      tokenColorsStateDangerLowest50: b.tokenColorsStateDangerLowest50._lerp(a.tokenColorsStateDangerLowest50, t),
      tokenColorsStateWarningHighest950: b.tokenColorsStateWarningHighest950._lerp(a.tokenColorsStateWarningHighest950, t),
      tokenColorsStateWarningHigh700: b.tokenColorsStateWarningHigh700._lerp(a.tokenColorsStateWarningHigh700, t),
      tokenColorsStateWarningDefault500: b.tokenColorsStateWarningDefault500._lerp(a.tokenColorsStateWarningDefault500, t),
      tokenColorsStateWarningLow200: b.tokenColorsStateWarningLow200._lerp(a.tokenColorsStateWarningLow200, t),
      tokenColorsStateWarningLowest50: b.tokenColorsStateWarningLowest50._lerp(a.tokenColorsStateWarningLowest50, t),
      tokenColorsStateInformationHighest950: b.tokenColorsStateInformationHighest950._lerp(a.tokenColorsStateInformationHighest950, t),
      tokenColorsStateInformationHigh700: b.tokenColorsStateInformationHigh700._lerp(a.tokenColorsStateInformationHigh700, t),
      tokenColorsStateInformationDefault500: b.tokenColorsStateInformationDefault500._lerp(a.tokenColorsStateInformationDefault500, t),
      tokenColorsStateInformationLow200: b.tokenColorsStateInformationLow200._lerp(a.tokenColorsStateInformationLow200, t),
      tokenColorsStateInformationLowest50: b.tokenColorsStateInformationLowest50._lerp(a.tokenColorsStateInformationLowest50, t),
      tokenColorsStateSuccessHighest950: b.tokenColorsStateSuccessHighest950._lerp(a.tokenColorsStateSuccessHighest950, t),
      tokenColorsStateSuccessHigh700: b.tokenColorsStateSuccessHigh700._lerp(a.tokenColorsStateSuccessHigh700, t),
      tokenColorsStateSuccessDefault500: b.tokenColorsStateSuccessDefault500._lerp(a.tokenColorsStateSuccessDefault500, t),
      tokenColorsStateSuccessLow200: b.tokenColorsStateSuccessLow200._lerp(a.tokenColorsStateSuccessLow200, t),
      tokenColorsStateSuccessLowest50: b.tokenColorsStateSuccessLowest50._lerp(a.tokenColorsStateSuccessLowest50, t),
      tokenColorsStateDiscoveryHighest950: b.tokenColorsStateDiscoveryHighest950._lerp(a.tokenColorsStateDiscoveryHighest950, t),
      tokenColorsStateDiscoveryHigh700: b.tokenColorsStateDiscoveryHigh700._lerp(a.tokenColorsStateDiscoveryHigh700, t),
      tokenColorsStateDiscoveryDefault500: b.tokenColorsStateDiscoveryDefault500._lerp(a.tokenColorsStateDiscoveryDefault500, t),
      tokenColorsStateDiscoveryLow200: b.tokenColorsStateDiscoveryLow200._lerp(a.tokenColorsStateDiscoveryLow200, t),
      tokenColorsStateDiscoveryLowest50: b.tokenColorsStateDiscoveryLowest50._lerp(a.tokenColorsStateDiscoveryLowest50, t),
      tokenColorsStateQuietHighest950: b.tokenColorsStateQuietHighest950._lerp(a.tokenColorsStateQuietHighest950, t),
      tokenColorsStateQuietHigh700: b.tokenColorsStateQuietHigh700._lerp(a.tokenColorsStateQuietHigh700, t),
      tokenColorsStateQuietDefault500: b.tokenColorsStateQuietDefault500._lerp(a.tokenColorsStateQuietDefault500, t),
      tokenColorsStateQuietLow200: b.tokenColorsStateQuietLow200._lerp(a.tokenColorsStateQuietLow200, t),
      tokenColorsStateQuietLowest50: b.tokenColorsStateQuietLowest50._lerp(a.tokenColorsStateQuietLowest50, t),
      tokenColorsTextBaseWhite: b.tokenColorsTextBaseWhite._lerp(a.tokenColorsTextBaseWhite, t),
      tokenColorsTextBaseGrey950: b.tokenColorsTextBaseGrey950._lerp(a.tokenColorsTextBaseGrey950, t),
      tokenColorsTextGreyHighest950: b.tokenColorsTextGreyHighest950._lerp(a.tokenColorsTextGreyHighest950, t),
      tokenColorsTextGreyHigh700: b.tokenColorsTextGreyHigh700._lerp(a.tokenColorsTextGreyHigh700, t),
      tokenColorsTextGreyDefault500: b.tokenColorsTextGreyDefault500._lerp(a.tokenColorsTextGreyDefault500, t),
      tokenColorsTextGreyLow300: b.tokenColorsTextGreyLow300._lerp(a.tokenColorsTextGreyLow300, t),
      tokenColorsTextGreyLowestWhite: b.tokenColorsTextGreyLowestWhite._lerp(a.tokenColorsTextGreyLowestWhite, t),
      tokenColorsTextBrandHigh700: b.tokenColorsTextBrandHigh700._lerp(a.tokenColorsTextBrandHigh700, t),
      tokenColorsTextBrandDefault500: b.tokenColorsTextBrandDefault500._lerp(a.tokenColorsTextBrandDefault500, t),
      tokenColorsTextBrandLow300: b.tokenColorsTextBrandLow300._lerp(a.tokenColorsTextBrandLow300, t),
      tokenColorsTextDangerHigh700: b.tokenColorsTextDangerHigh700._lerp(a.tokenColorsTextDangerHigh700, t),
      tokenColorsTextDangerDefault500: b.tokenColorsTextDangerDefault500._lerp(a.tokenColorsTextDangerDefault500, t),
      tokenColorsTextDangerLow300: b.tokenColorsTextDangerLow300._lerp(a.tokenColorsTextDangerLow300, t),
      tokenColorsTextWarningHigh700: b.tokenColorsTextWarningHigh700._lerp(a.tokenColorsTextWarningHigh700, t),
      tokenColorsTextWarningDefault500: b.tokenColorsTextWarningDefault500._lerp(a.tokenColorsTextWarningDefault500, t),
      tokenColorsTextWarningLow300: b.tokenColorsTextWarningLow300._lerp(a.tokenColorsTextWarningLow300, t),
      tokenColorsTextInformationHigh700: b.tokenColorsTextInformationHigh700._lerp(a.tokenColorsTextInformationHigh700, t),
      tokenColorsTextInformationDefault500: b.tokenColorsTextInformationDefault500._lerp(a.tokenColorsTextInformationDefault500, t),
      tokenColorsTextInformationLow300: b.tokenColorsTextInformationLow300._lerp(a.tokenColorsTextInformationLow300, t),
      tokenColorsTextSuccessHigh700: b.tokenColorsTextSuccessHigh700._lerp(a.tokenColorsTextSuccessHigh700, t),
      tokenColorsTextSuccessDefault500: b.tokenColorsTextSuccessDefault500._lerp(a.tokenColorsTextSuccessDefault500, t),
      tokenColorsTextSuccessLow300: b.tokenColorsTextSuccessLow300._lerp(a.tokenColorsTextSuccessLow300, t),
      tokenColorsTextDiscoveryHigh700: b.tokenColorsTextDiscoveryHigh700._lerp(a.tokenColorsTextDiscoveryHigh700, t),
      tokenColorsTextDiscoveryDefault500: b.tokenColorsTextDiscoveryDefault500._lerp(a.tokenColorsTextDiscoveryDefault500, t),
      tokenColorsTextDiscoveryLow300: b.tokenColorsTextDiscoveryLow300._lerp(a.tokenColorsTextDiscoveryLow300, t),
      tokenColorsTextQuietHigh700: b.tokenColorsTextQuietHigh700._lerp(a.tokenColorsTextQuietHigh700, t),
      tokenColorsTextQuietDefault500: b.tokenColorsTextQuietDefault500._lerp(a.tokenColorsTextQuietDefault500, t),
      tokenColorsTextQuietLow300: b.tokenColorsTextQuietLow300._lerp(a.tokenColorsTextQuietLow300, t),
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
      tokenColorsStateBrandLowestHover100: b.tokenColorsStateBrandLowestHover100._lerp(a.tokenColorsStateBrandLowestHover100, t),
      tokenColorsStateSuccessLowestHover100: b.tokenColorsStateSuccessLowestHover100._lerp(a.tokenColorsStateSuccessLowestHover100, t),
      tokenColorsStateWarningLowestHover100: b.tokenColorsStateWarningLowestHover100._lerp(a.tokenColorsStateWarningLowestHover100, t),
      tokenColorsStateInformationLowestHover100: b.tokenColorsStateInformationLowestHover100._lerp(a.tokenColorsStateInformationLowestHover100, t),
      tokenColorsStateDangerLowestHover100: b.tokenColorsStateDangerLowestHover100._lerp(a.tokenColorsStateDangerLowestHover100, t),
      tokenColorsStateDiscoveryLowestHover100: b.tokenColorsStateDiscoveryLowestHover100._lerp(a.tokenColorsStateDiscoveryLowestHover100, t),
      tokenColorsStateQuietLowestHover100: b.tokenColorsStateQuietLowestHover100._lerp(a.tokenColorsStateQuietLowestHover100, t),
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
      tokenColorsStrokeBaseWhite: b.tokenColorsStrokeBaseWhite._lerp(a.tokenColorsStrokeBaseWhite, t),
      tokenColorsStrokeBaseGrey950: b.tokenColorsStrokeBaseGrey950._lerp(a.tokenColorsStrokeBaseGrey950, t),
      tokenColorsStrokeGreyHighest950: b.tokenColorsStrokeGreyHighest950._lerp(a.tokenColorsStrokeGreyHighest950, t),
      tokenColorsStrokeGreyHigh700: b.tokenColorsStrokeGreyHigh700._lerp(a.tokenColorsStrokeGreyHigh700, t),
      tokenColorsStrokeGreyDefault500: b.tokenColorsStrokeGreyDefault500._lerp(a.tokenColorsStrokeGreyDefault500, t),
      tokenColorsStrokeGreyLow300: b.tokenColorsStrokeGreyLow300._lerp(a.tokenColorsStrokeGreyLow300, t),
      tokenColorsStrokeGreyLowestWhite: b.tokenColorsStrokeGreyLowestWhite._lerp(a.tokenColorsStrokeGreyLowestWhite, t),
      tokenColorsStrokeBrandHigh700: b.tokenColorsStrokeBrandHigh700._lerp(a.tokenColorsStrokeBrandHigh700, t),
      tokenColorsStrokeBrandDefault500: b.tokenColorsStrokeBrandDefault500._lerp(a.tokenColorsStrokeBrandDefault500, t),
      tokenColorsStrokeBrandLow300: b.tokenColorsStrokeBrandLow300._lerp(a.tokenColorsStrokeBrandLow300, t),
      tokenColorsStrokeSuccessHigh700: b.tokenColorsStrokeSuccessHigh700._lerp(a.tokenColorsStrokeSuccessHigh700, t),
      tokenColorsStrokeSuccessDefault500: b.tokenColorsStrokeSuccessDefault500._lerp(a.tokenColorsStrokeSuccessDefault500, t),
      tokenColorsStrokeSuccessLow300: b.tokenColorsStrokeSuccessLow300._lerp(a.tokenColorsStrokeSuccessLow300, t),
      tokenColorsStrokeWarningHigh700: b.tokenColorsStrokeWarningHigh700._lerp(a.tokenColorsStrokeWarningHigh700, t),
      tokenColorsStrokeWarningDefault500: b.tokenColorsStrokeWarningDefault500._lerp(a.tokenColorsStrokeWarningDefault500, t),
      tokenColorsStrokeWarningLow300: b.tokenColorsStrokeWarningLow300._lerp(a.tokenColorsStrokeWarningLow300, t),
      tokenColorsStrokeInformationHigh700: b.tokenColorsStrokeInformationHigh700._lerp(a.tokenColorsStrokeInformationHigh700, t),
      tokenColorsStrokeInformationDefault500: b.tokenColorsStrokeInformationDefault500._lerp(a.tokenColorsStrokeInformationDefault500, t),
      tokenColorsStrokeInformationLow300: b.tokenColorsStrokeInformationLow300._lerp(a.tokenColorsStrokeInformationLow300, t),
      tokenColorsStrokeDangerHigh700: b.tokenColorsStrokeDangerHigh700._lerp(a.tokenColorsStrokeDangerHigh700, t),
      tokenColorsStrokeDangerDefault500: b.tokenColorsStrokeDangerDefault500._lerp(a.tokenColorsStrokeDangerDefault500, t),
      tokenColorsStrokeDangerLow300: b.tokenColorsStrokeDangerLow300._lerp(a.tokenColorsStrokeDangerLow300, t),
      tokenColorsStrokeDiscoveryHigh700: b.tokenColorsStrokeDiscoveryHigh700._lerp(a.tokenColorsStrokeDiscoveryHigh700, t),
      tokenColorsStrokeDiscoveryDefault500: b.tokenColorsStrokeDiscoveryDefault500._lerp(a.tokenColorsStrokeDiscoveryDefault500, t),
      tokenColorsStrokeDiscoveryLow300: b.tokenColorsStrokeDiscoveryLow300._lerp(a.tokenColorsStrokeDiscoveryLow300, t),
      tokenColorsStrokeQuietHigh700: b.tokenColorsStrokeQuietHigh700._lerp(a.tokenColorsStrokeQuietHigh700, t),
      tokenColorsStrokeQuietDefault500: b.tokenColorsStrokeQuietDefault500._lerp(a.tokenColorsStrokeQuietDefault500, t),
      tokenColorsStrokeQuietLow300: b.tokenColorsStrokeQuietLow300._lerp(a.tokenColorsStrokeQuietLow300, t),
    );
  }
}

class _ThemeLight extends ThemeDefault {
  _ThemeLight._() : super._();
  @override
  Color get tokenColorsStateBaseWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsStateBaseGrey950 => AllColors.greyLight950;
  @override
  Color get tokenColorsStateGreyHighest900 => AllColors.greyLight900;
  @override
  Color get tokenColorsStateGreyHighestHover800 => AllColors.greyLight800;
  @override
  Color get tokenColorsStateGreyHigh700 => AllColors.greyLight700;
  @override
  Color get tokenColorsStateGreyDefault500 => AllColors.greyLight500;
  @override
  Color get tokenColorsStateGreyDefaultHover400 => AllColors.greyLight400;
  @override
  Color get tokenColorsStateGreyLow300 => AllColors.greyLight300;
  @override
  Color get tokenColorsStateGreyLowest50 => AllColors.greyLight50;
  @override
  Color get tokenColorsStateGreyLowestHover100 => AllColors.greyLight100;
  @override
  Color get tokenColorsStateBrandHighest950 => BrandColor.brand900;
  @override
  Color get tokenColorsStateBrandHigh700 => BrandColor.brand700;
  @override
  Color get tokenColorsStateBrandDefault500 => BrandColor.brand500;
  @override
  Color get tokenColorsStateBrandLow200 => BrandColor.brand200;
  @override
  Color get tokenColorsStateBrandLowest50 => BrandColor.brand50;
  @override
  Color get tokenColorsStateDangerHighest950 => AllColors.red900;
  @override
  Color get tokenColorsStateDangerHigh700 => AllColors.red700;
  @override
  Color get tokenColorsStateDangerDefault500 => AllColors.red500;
  @override
  Color get tokenColorsStateDangerLow200 => AllColors.red300;
  @override
  Color get tokenColorsStateDangerLowest50 => AllColors.red50;
  @override
  Color get tokenColorsStateWarningHighest950 => AllColors.orange900;
  @override
  Color get tokenColorsStateWarningHigh700 => AllColors.orange700;
  @override
  Color get tokenColorsStateWarningDefault500 => AllColors.orange500;
  @override
  Color get tokenColorsStateWarningLow200 => AllColors.orange200;
  @override
  Color get tokenColorsStateWarningLowest50 => AllColors.orange50;
  @override
  Color get tokenColorsStateInformationHighest950 => AllColors.blue900;
  @override
  Color get tokenColorsStateInformationHigh700 => AllColors.blue700;
  @override
  Color get tokenColorsStateInformationDefault500 => AllColors.blue500;
  @override
  Color get tokenColorsStateInformationLow200 => AllColors.blue200;
  @override
  Color get tokenColorsStateInformationLowest50 => AllColors.blue50;
  @override
  Color get tokenColorsStateSuccessHighest950 => AllColors.green900;
  @override
  Color get tokenColorsStateSuccessHigh700 => AllColors.green700;
  @override
  Color get tokenColorsStateSuccessDefault500 => AllColors.green500;
  @override
  Color get tokenColorsStateSuccessLow200 => AllColors.green200;
  @override
  Color get tokenColorsStateSuccessLowest50 => AllColors.green50;
  @override
  Color get tokenColorsStateDiscoveryHighest950 => AllColors.violet900;
  @override
  Color get tokenColorsStateDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get tokenColorsStateDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get tokenColorsStateDiscoveryLow200 => AllColors.violet200;
  @override
  Color get tokenColorsStateDiscoveryLowest50 => AllColors.violet50;
  @override
  Color get tokenColorsStateQuietHighest950 => AllColors.teal900;
  @override
  Color get tokenColorsStateQuietHigh700 => AllColors.teal700;
  @override
  Color get tokenColorsStateQuietDefault500 => AllColors.teal500;
  @override
  Color get tokenColorsStateQuietLow200 => AllColors.teal200;
  @override
  Color get tokenColorsStateQuietLowest50 => AllColors.teal50;
  @override
  Color get tokenColorsTextBaseWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsTextBaseGrey950 => AllColors.greyLight950;
  @override
  Color get tokenColorsTextGreyHighest950 => AllColors.greyLight950;
  @override
  Color get tokenColorsTextGreyHigh700 => AllColors.greyLight700;
  @override
  Color get tokenColorsTextGreyDefault500 => AllColors.greyLight500;
  @override
  Color get tokenColorsTextGreyLow300 => AllColors.greyLight300;
  @override
  Color get tokenColorsTextGreyLowestWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsTextBrandHigh700 => BrandColor.brand700;
  @override
  Color get tokenColorsTextBrandDefault500 => BrandColor.brand500;
  @override
  Color get tokenColorsTextBrandLow300 => BrandColor.brand300;
  @override
  Color get tokenColorsTextDangerHigh700 => AllColors.red700;
  @override
  Color get tokenColorsTextDangerDefault500 => AllColors.red500;
  @override
  Color get tokenColorsTextDangerLow300 => AllColors.red300;
  @override
  Color get tokenColorsTextWarningHigh700 => AllColors.orange700;
  @override
  Color get tokenColorsTextWarningDefault500 => AllColors.orange500;
  @override
  Color get tokenColorsTextWarningLow300 => AllColors.orange300;
  @override
  Color get tokenColorsTextInformationHigh700 => AllColors.blue700;
  @override
  Color get tokenColorsTextInformationDefault500 => AllColors.blue500;
  @override
  Color get tokenColorsTextInformationLow300 => AllColors.blue300;
  @override
  Color get tokenColorsTextSuccessHigh700 => AllColors.green700;
  @override
  Color get tokenColorsTextSuccessDefault500 => AllColors.green500;
  @override
  Color get tokenColorsTextSuccessLow300 => AllColors.green300;
  @override
  Color get tokenColorsTextDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get tokenColorsTextDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get tokenColorsTextDiscoveryLow300 => AllColors.violet300;
  @override
  Color get tokenColorsTextQuietHigh700 => AllColors.teal700;
  @override
  Color get tokenColorsTextQuietDefault500 => AllColors.teal500;
  @override
  Color get tokenColorsTextQuietLow300 => AllColors.teal300;
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
  Color get tokenColorsStateBrandLowestHover100 => BrandColor.brand100;
  @override
  Color get tokenColorsStateSuccessLowestHover100 => AllColors.green100;
  @override
  Color get tokenColorsStateWarningLowestHover100 => AllColors.orange100;
  @override
  Color get tokenColorsStateInformationLowestHover100 => AllColors.blue100;
  @override
  Color get tokenColorsStateDangerLowestHover100 => AllColors.red100;
  @override
  Color get tokenColorsStateDiscoveryLowestHover100 => AllColors.violet100;
  @override
  Color get tokenColorsStateQuietLowestHover100 => AllColors.teal100;
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
  Color get tokenColorsStrokeBaseWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsStrokeBaseGrey950 => AllColors.greyLight950;
  @override
  Color get tokenColorsStrokeGreyHighest950 => AllColors.greyLight950;
  @override
  Color get tokenColorsStrokeGreyHigh700 => AllColors.greyLight700;
  @override
  Color get tokenColorsStrokeGreyDefault500 => AllColors.greyLight500;
  @override
  Color get tokenColorsStrokeGreyLow300 => AllColors.greyLight300;
  @override
  Color get tokenColorsStrokeGreyLowestWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsStrokeBrandHigh700 => BrandColor.brand700;
  @override
  Color get tokenColorsStrokeBrandDefault500 => BrandColor.brand500;
  @override
  Color get tokenColorsStrokeBrandLow300 => BrandColor.brand300;
  @override
  Color get tokenColorsStrokeSuccessHigh700 => AllColors.green700;
  @override
  Color get tokenColorsStrokeSuccessDefault500 => AllColors.green500;
  @override
  Color get tokenColorsStrokeSuccessLow300 => AllColors.green300;
  @override
  Color get tokenColorsStrokeWarningHigh700 => AllColors.orange700;
  @override
  Color get tokenColorsStrokeWarningDefault500 => AllColors.orange500;
  @override
  Color get tokenColorsStrokeWarningLow300 => AllColors.orange300;
  @override
  Color get tokenColorsStrokeInformationHigh700 => AllColors.blue700;
  @override
  Color get tokenColorsStrokeInformationDefault500 => AllColors.blue500;
  @override
  Color get tokenColorsStrokeInformationLow300 => AllColors.blue300;
  @override
  Color get tokenColorsStrokeDangerHigh700 => AllColors.red700;
  @override
  Color get tokenColorsStrokeDangerDefault500 => AllColors.red500;
  @override
  Color get tokenColorsStrokeDangerLow300 => AllColors.red300;
  @override
  Color get tokenColorsStrokeDiscoveryHigh700 => AllColors.violet700;
  @override
  Color get tokenColorsStrokeDiscoveryDefault500 => AllColors.violet500;
  @override
  Color get tokenColorsStrokeDiscoveryLow300 => AllColors.violet300;
  @override
  Color get tokenColorsStrokeQuietHigh700 => AllColors.teal700;
  @override
  Color get tokenColorsStrokeQuietDefault500 => AllColors.teal500;
  @override
  Color get tokenColorsStrokeQuietLow300 => AllColors.teal300;
}

class _ThemeDark extends ThemeDefault {
  _ThemeDark._() : super._();
  @override
  Color get tokenColorsStateBaseWhite => AllColors.greyDark950;
  @override
  Color get tokenColorsStateBaseGrey950 => AllColors.baseWhite;
  @override
  Color get tokenColorsStateGreyHighest900 => AllColors.greyLight50;
  @override
  Color get tokenColorsStateGreyHighestHover800 => AllColors.greyDark100;
  @override
  Color get tokenColorsStateGreyHigh700 => AllColors.greyDark200;
  @override
  Color get tokenColorsStateGreyDefault500 => AllColors.greyDark400;
  @override
  Color get tokenColorsStateGreyDefaultHover400 => AllColors.greyDark500;
  @override
  Color get tokenColorsStateGreyLow300 => AllColors.greyDark600;
  @override
  Color get tokenColorsStateGreyLowest50 => AllColors.greyDark900;
  @override
  Color get tokenColorsStateGreyLowestHover100 => AllColors.greyDark800;
  @override
  Color get tokenColorsStateBrandHighest950 => BrandColor.brand50;
  @override
  Color get tokenColorsStateBrandHigh700 => BrandColor.brand200;
  @override
  Color get tokenColorsStateBrandDefault500 => BrandColor.brand400;
  @override
  Color get tokenColorsStateBrandLow200 => BrandColor.brand700;
  @override
  Color get tokenColorsStateBrandLowest50 => BrandColor.brand900;
  @override
  Color get tokenColorsStateDangerHighest950 => AllColors.red50;
  @override
  Color get tokenColorsStateDangerHigh700 => AllColors.red200;
  @override
  Color get tokenColorsStateDangerDefault500 => AllColors.red400;
  @override
  Color get tokenColorsStateDangerLow200 => AllColors.red700;
  @override
  Color get tokenColorsStateDangerLowest50 => AllColors.red900;
  @override
  Color get tokenColorsStateWarningHighest950 => AllColors.orange50;
  @override
  Color get tokenColorsStateWarningHigh700 => AllColors.orange200;
  @override
  Color get tokenColorsStateWarningDefault500 => AllColors.orange400;
  @override
  Color get tokenColorsStateWarningLow200 => AllColors.orange700;
  @override
  Color get tokenColorsStateWarningLowest50 => AllColors.orange900;
  @override
  Color get tokenColorsStateInformationHighest950 => AllColors.blue50;
  @override
  Color get tokenColorsStateInformationHigh700 => AllColors.blue200;
  @override
  Color get tokenColorsStateInformationDefault500 => AllColors.blue400;
  @override
  Color get tokenColorsStateInformationLow200 => AllColors.blue700;
  @override
  Color get tokenColorsStateInformationLowest50 => AllColors.blue900;
  @override
  Color get tokenColorsStateSuccessHighest950 => AllColors.green50;
  @override
  Color get tokenColorsStateSuccessHigh700 => AllColors.green200;
  @override
  Color get tokenColorsStateSuccessDefault500 => AllColors.green400;
  @override
  Color get tokenColorsStateSuccessLow200 => AllColors.green700;
  @override
  Color get tokenColorsStateSuccessLowest50 => AllColors.green900;
  @override
  Color get tokenColorsStateDiscoveryHighest950 => AllColors.violet50;
  @override
  Color get tokenColorsStateDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get tokenColorsStateDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get tokenColorsStateDiscoveryLow200 => AllColors.violet700;
  @override
  Color get tokenColorsStateDiscoveryLowest50 => AllColors.violet900;
  @override
  Color get tokenColorsStateQuietHighest950 => AllColors.teal50;
  @override
  Color get tokenColorsStateQuietHigh700 => AllColors.teal200;
  @override
  Color get tokenColorsStateQuietDefault500 => AllColors.teal400;
  @override
  Color get tokenColorsStateQuietLow200 => AllColors.teal700;
  @override
  Color get tokenColorsStateQuietLowest50 => AllColors.teal900;
  @override
  Color get tokenColorsTextBaseWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsTextBaseGrey950 => AllColors.greyDark950;
  @override
  Color get tokenColorsTextGreyHighest950 => AllColors.baseWhite;
  @override
  Color get tokenColorsTextGreyHigh700 => AllColors.greyDark200;
  @override
  Color get tokenColorsTextGreyDefault500 => AllColors.greyDark500;
  @override
  Color get tokenColorsTextGreyLow300 => AllColors.greyDark300;
  @override
  Color get tokenColorsTextGreyLowestWhite => AllColors.greyDark950;
  @override
  Color get tokenColorsTextBrandHigh700 => BrandColor.brand300;
  @override
  Color get tokenColorsTextBrandDefault500 => BrandColor.brand400;
  @override
  Color get tokenColorsTextBrandLow300 => BrandColor.brand700;
  @override
  Color get tokenColorsTextDangerHigh700 => AllColors.red200;
  @override
  Color get tokenColorsTextDangerDefault500 => AllColors.red400;
  @override
  Color get tokenColorsTextDangerLow300 => AllColors.red700;
  @override
  Color get tokenColorsTextWarningHigh700 => AllColors.orange200;
  @override
  Color get tokenColorsTextWarningDefault500 => AllColors.orange400;
  @override
  Color get tokenColorsTextWarningLow300 => AllColors.orange700;
  @override
  Color get tokenColorsTextInformationHigh700 => AllColors.blue200;
  @override
  Color get tokenColorsTextInformationDefault500 => AllColors.blue400;
  @override
  Color get tokenColorsTextInformationLow300 => AllColors.blue700;
  @override
  Color get tokenColorsTextSuccessHigh700 => AllColors.green200;
  @override
  Color get tokenColorsTextSuccessDefault500 => AllColors.green400;
  @override
  Color get tokenColorsTextSuccessLow300 => AllColors.green700;
  @override
  Color get tokenColorsTextDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get tokenColorsTextDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get tokenColorsTextDiscoveryLow300 => AllColors.violet700;
  @override
  Color get tokenColorsTextQuietHigh700 => AllColors.teal200;
  @override
  Color get tokenColorsTextQuietDefault500 => AllColors.teal400;
  @override
  Color get tokenColorsTextQuietLow300 => AllColors.teal700;
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
  Color get tokenColorsStateBrandLowestHover100 => BrandColor.brand800;
  @override
  Color get tokenColorsStateSuccessLowestHover100 => AllColors.green800;
  @override
  Color get tokenColorsStateWarningLowestHover100 => AllColors.orange800;
  @override
  Color get tokenColorsStateInformationLowestHover100 => AllColors.blue800;
  @override
  Color get tokenColorsStateDangerLowestHover100 => AllColors.red800;
  @override
  Color get tokenColorsStateDiscoveryLowestHover100 => AllColors.violet800;
  @override
  Color get tokenColorsStateQuietLowestHover100 => AllColors.teal800;
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
  Color get tokenColorsStrokeBaseWhite => AllColors.baseWhite;
  @override
  Color get tokenColorsStrokeBaseGrey950 => AllColors.greyDark950;
  @override
  Color get tokenColorsStrokeGreyHighest950 => AllColors.baseWhite;
  @override
  Color get tokenColorsStrokeGreyHigh700 => AllColors.greyDark200;
  @override
  Color get tokenColorsStrokeGreyDefault500 => AllColors.greyDark500;
  @override
  Color get tokenColorsStrokeGreyLow300 => AllColors.greyDark300;
  @override
  Color get tokenColorsStrokeGreyLowestWhite => AllColors.greyDark950;
  @override
  Color get tokenColorsStrokeBrandHigh700 => BrandColor.brand300;
  @override
  Color get tokenColorsStrokeBrandDefault500 => BrandColor.brand400;
  @override
  Color get tokenColorsStrokeBrandLow300 => BrandColor.brand700;
  @override
  Color get tokenColorsStrokeSuccessHigh700 => AllColors.green200;
  @override
  Color get tokenColorsStrokeSuccessDefault500 => AllColors.green400;
  @override
  Color get tokenColorsStrokeSuccessLow300 => AllColors.green700;
  @override
  Color get tokenColorsStrokeWarningHigh700 => AllColors.orange200;
  @override
  Color get tokenColorsStrokeWarningDefault500 => AllColors.orange400;
  @override
  Color get tokenColorsStrokeWarningLow300 => AllColors.orange700;
  @override
  Color get tokenColorsStrokeInformationHigh700 => AllColors.blue200;
  @override
  Color get tokenColorsStrokeInformationDefault500 => AllColors.blue400;
  @override
  Color get tokenColorsStrokeInformationLow300 => AllColors.blue700;
  @override
  Color get tokenColorsStrokeDangerHigh700 => AllColors.red200;
  @override
  Color get tokenColorsStrokeDangerDefault500 => AllColors.red400;
  @override
  Color get tokenColorsStrokeDangerLow300 => AllColors.red700;
  @override
  Color get tokenColorsStrokeDiscoveryHigh700 => AllColors.violet200;
  @override
  Color get tokenColorsStrokeDiscoveryDefault500 => AllColors.violet400;
  @override
  Color get tokenColorsStrokeDiscoveryLow300 => AllColors.violet700;
  @override
  Color get tokenColorsStrokeQuietHigh700 => AllColors.teal200;
  @override
  Color get tokenColorsStrokeQuietDefault500 => AllColors.teal400;
  @override
  Color get tokenColorsStrokeQuietLow300 => AllColors.teal700;
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
  FontFamilyDefault._lerp({
    required this.fonts,
  });
  late final String fonts;
  static FontFamilyDefault _lerpResolve(FontFamilyDefault a, FontFamilyDefault b, double t) {
    return FontFamilyDefault._lerp(
      fonts: b.fonts._lerp(a.fonts, t),
    );
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

class AppTextStyles {
  const AppTextStyles._();

  static const _parent = TextStyle(
    debugLabel: '',
    leadingDistribution: TextLeadingDistribution.even,
  );

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
  const Shadow._({
    super.color,
    super.offset,
    super.blurRadius,
    super.spreadRadius = 0.0,
    super.blurStyle,
  });
}

class Shadows {
  const Shadows._();

  static final List<Shadow> shadowSm = [
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 4,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> shadowMd = [
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 4,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> shadowLg = [
    Shadow._(
      color: Theme.shadowMd10,
      offset: Offset(0, 4),
      blurRadius: 8,
      spreadRadius: -2,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -2,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> shadowXl = [
    Shadow._(
      color: Theme.shadowMd10,
      offset: Offset(0, 12),
      blurRadius: 16,
      spreadRadius: -6,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -2,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> shadow2xl = [
    Shadow._(
      color: Theme.shadowMd10,
      offset: Offset(0, 18),
      blurRadius: 24,
      spreadRadius: -6,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 6),
      blurRadius: 8,
      spreadRadius: -4,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> shadow3xl = [
    Shadow._(
      color: Theme.shadowXl30,
      offset: Offset(0, 24),
      blurRadius: 48,
      spreadRadius: -10,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 6),
      blurRadius: 8,
      spreadRadius: -4,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusBrand = [
    Shadow._(
      color: Theme.tokenColorsStateBrandDefault500,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusGray = [
    Shadow._(
      color: Theme.tokenColorsStateGreyHighest900,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusSuccess = [
    Shadow._(
      color: Theme.tokenColorsStateSuccessDefault500,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusWarning = [
    Shadow._(
      color: Theme.tokenColorsStateWarningDefault500,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusInformation = [
    Shadow._(
      color: Theme.tokenColorsStateInformationDefault500,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<Shadow> focusDanger = [
    Shadow._(
      color: Theme.tokenColorsStateDangerDefault500,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.alphaWhite80,
      offset: Offset(0, 0),
      blurRadius: 0,
      spreadRadius: 4,
      blurStyle: BlurStyle.normal,
    ),
    Shadow._(
      color: Theme.shadowSm5,
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
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

final class Figma {
  static TypographyDefault get typography => Typography;
  static AllColorsDefault get allColors => AllColors;
  static ThemeDefault get theme => Theme;
  static BrandColorDefault get brandColor => BrandColor;
  static SpacingDefault get spacing => Spacing;
  static CornerDefault get corner => Corner;
  static FontFamilyDefault get fontFamily => FontFamily;
}
