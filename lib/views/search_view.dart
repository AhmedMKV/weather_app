import 'package:flutter/material.dart';

import '../widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Search for a city',
            style: TextStyle(color: Color(0xFF0D47A1), fontFamily: 'Pacifico'),
          ),
        ),
        body: SearchViewBody());
  }
}
