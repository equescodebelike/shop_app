import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/navigation/app_router.dart';

class ShopApp extends StatelessWidget {
  ShopApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF1F1F1F),
          onPrimary: Color(0xFFFFFFFF),
          background: Color(0xFFFFFFFF),
          onBackground: Color(0xFF1F1F1F),
          surface: Color(0xFFFFFFFF),
          onSurface: Color(0xFF1F1F1F),
          surfaceVariant: Color(0xFFF0F0F0),
          secondary: Color(0xFFF5F5F5),
          onSecondary: Color(0xFF1F1F1F),
          error: Color(0xFFF85535),
          onError: Color(0xFFFFFFFF),
        ),
        textTheme: TextTheme(
          headlineSmall: GoogleFonts.montserrat(
            fontSize: 24,
            height: 32 / 24,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.montserrat(
            fontSize: 16,
            height: 20 / 16,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: GoogleFonts.montserrat(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: GoogleFonts.montserrat(
            fontSize: 12,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: GoogleFonts.montserrat(
            fontSize: 16,
            height: 32 / 24,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: GoogleFonts.montserrat(
            fontSize: 12,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
