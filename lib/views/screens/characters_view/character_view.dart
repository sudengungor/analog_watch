import 'package:flutter/material.dart';
import 'package:rickandmorty/views/widgets/character_card_view.dart';

class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Column(
            children: [
              _searchInputWidget(context),
              const CharacterCardView(
                image:
                    'https://rickandmortyapi.com/api/character/avatar/600.jpeg',
                name: 'Rick Sanchez',
                origin: 'Earth (C-137)',
                status: 'Alive',
                type: 'Human',
              ),
              
              const CharacterCardView(
                image:
                    'https://rickandmortyapi.com/api/character/avatar/600.jpeg',
                name: 'Rick Sanchez',
                origin: 'Earth (C-137)',
                status: 'Alive',
                type: 'Human',
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget _searchInputWidget(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search in Characters",
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),  
                  suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                ),
              ),
            );
  }
}