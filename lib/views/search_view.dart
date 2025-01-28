import 'package:flutter/material.dart';

import '../widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D47A1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Search for a city',
            style: TextStyle(color: Colors.blue,),
          ),
        ),
        body: SearchViewBody());
  }
}
