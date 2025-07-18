import 'package:flutter/material.dart';
import '../widgets/welcome_card.dart';
import '../widgets/section_title.dart';
import '../widgets/favorites_wrap.dart';
import '../widgets/country_card.dart';
import '../models/country.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  final List<String> _selectedCountries = [];

  void _addCountry(String countryName) {
    if (!_selectedCountries.contains(countryName)) {
      setState(() {
        _selectedCountries.add(countryName);
      });
    }
  }

  static final List<Country> europeCountries = [
    Country(emoji: "🇮🇹", name: "Italien"),
    Country(emoji: "🇪🇸", name: "Spanien"),
    Country(emoji: "🇩🇪", name: "Deutschland"),
    Country(emoji: "🇫🇷", name: "Frankreich"),
    Country(emoji: "🇳🇴", name: "Norwegen"),
  ];

  static final List<Country> southAmericaCountries = [
    Country(emoji: "🇧🇷", name: "Brasilien"),
    Country(emoji: "🇦🇷", name: "Argentinien"),
    Country(emoji: "🇨🇱", name: "Chile"),
    Country(emoji: "🇵🇪", name: "Peru"),
    Country(emoji: "🇨🇴", name: "Kolumbien"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeCard(),
          const SizedBox(height: 24),
          const SectionTitle("Europa"),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: europeCountries
                  .map(
                    (country) => CountryCard(
                      emoji: country.emoji,
                      name: country.name,
                      onTap: () => _addCountry(country.name),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 24),
          const SectionTitle("Südamerika"),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: southAmericaCountries
                  .map(
                    (country) => CountryCard(
                      emoji: country.emoji,
                      name: country.name,
                      onTap: () => _addCountry(country.name),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 24),
          const SectionTitle("Favoriten"),
          const SizedBox(height: 8),
          FavoritesWrap(favorites: _selectedCountries),
        ],
      ),
    );
  }
} 