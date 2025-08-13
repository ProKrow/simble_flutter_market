import 'package:flutter/material.dart';

class AppTextStyles {
  // Font family - you can change this to your preferred font
  static const String _fontFamily = 'Inter'; // or 'Roboto', 'Poppins', etc.

  // Color definitions
  static const Color _primaryTextColor = Color(0xFF1A1A1A);
  static const Color _secondaryTextColor = Color(0xFF666666);
  static const Color _accentColor = Color(
    0xFF00B761,
  ); // Green for delivery apps
  static const Color _errorColor = Color(0xFFE53E3E);
  static const Color _whiteColor = Colors.white;
  static const Color _priceColor = Color(0xFF2D5016);

  // Large Headers
  static const TextStyle appBarTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
    letterSpacing: -0.3,
  );

  static const TextStyle largeTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: _primaryTextColor,
    letterSpacing: -0.5,
    height: 1.2,
  );

  // Section Headers
  static const TextStyle sectionHeader = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
    letterSpacing: -0.2,
  );

  static const TextStyle categoryTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
    letterSpacing: -0.1,
  );

  // Product/Item Styles
  static const TextStyle productName = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
    letterSpacing: -0.05,
    height: 1.3,
  );

  static const TextStyle productTitle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w900,
    color: _primaryTextColor,
    letterSpacing: -0.1,
  );

  static const TextStyle productDescription = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
    height: 1.4,
  );

  // Price Styles
  static const TextStyle priceMain = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: _priceColor,
    letterSpacing: -0.2,
  );

  static const TextStyle priceSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: _priceColor,
  );

  static const TextStyle priceStrikethrough = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
    decoration: TextDecoration.lineThrough,
  );

  // Button Text Styles
  static const TextStyle buttonPrimary = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _whiteColor,
    letterSpacing: 0.1,
  );

  static const TextStyle buttonSecondary = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _accentColor,
    letterSpacing: 0.1,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _accentColor,
  );

  // Body Text Styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
    height: 1.4,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
    height: 1.3,
  );

  // Caption and Helper Text
  static const TextStyle caption = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
    letterSpacing: 0.1,
  );

  static const TextStyle helperText = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
  );

  // Badge and Tag Styles
  static const TextStyle badge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: _whiteColor,
    letterSpacing: 0.2,
  );

  static const TextStyle tag = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: _accentColor,
    letterSpacing: 0.1,
  );

  // Status and Notification Styles
  static const TextStyle statusSuccess = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _accentColor,
  );

  static const TextStyle statusError = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _errorColor,
  );

  static const TextStyle notification = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
    height: 1.3,
  );

  // Input Field Styles
  static const TextStyle inputLabel = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: _primaryTextColor,
  );

  static const TextStyle inputText = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _primaryTextColor,
  );

  static const TextStyle inputHint = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
  );

  // Time and Distance Styles
  static const TextStyle deliveryTime = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: _accentColor,
  );

  static const TextStyle distance = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: _secondaryTextColor,
  );

  // Rating Style
  static const TextStyle rating = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFF8A00), // Orange for ratings
  );

  // Quantity and Counter Styles
  static const TextStyle quantity = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: _primaryTextColor,
  );

  // Methods for dynamic text styles
  static TextStyle customStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? _primaryTextColor,
      letterSpacing: letterSpacing,
      height: height,
      decoration: decoration,
    );
  }

  // Responsive text styles (you can use these with MediaQuery)
  static TextStyle responsiveTitle(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: screenWidth > 600 ? 32 : 28,
      fontWeight: FontWeight.w700,
      color: _primaryTextColor,
      letterSpacing: -0.5,
      height: 1.2,
    );
  }

  static TextStyle responsiveBody(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: screenWidth > 600 ? 18 : 16,
      fontWeight: FontWeight.w400,
      color: _primaryTextColor,
      height: 1.5,
    );
  }
}
