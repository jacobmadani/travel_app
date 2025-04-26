import 'package:flutter/material.dart';
import 'package:flight_booking_app/book_flight_page.dart';
import 'package:flight_booking_app/landing_page.dart';
import 'package:flight_booking_app/search_flight_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4093CE),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4093CE),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/search': (context) => const SearchFlightPage(),
        '/book': (context) => const BookFlightPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
