import 'package:flutter/material.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Buscar em todo WeParty',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Os mais buscados perto de você',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 6, // Defina o número de itens aqui
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                    ),
                    title: const Text('Nome do Evento'),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.star, color: Colors.red, size: 16),
                        Icon(Icons.star, color: Colors.red, size: 16),
                        Icon(Icons.star, color: Colors.red, size: 16),
                        Icon(Icons.star, color: Colors.red, size: 16),
                        Icon(Icons.star_half, color: Colors.red, size: 16),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
