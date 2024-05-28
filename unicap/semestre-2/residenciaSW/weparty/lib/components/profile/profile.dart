import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey[300],
        ),
        const SizedBox(height: 10),
        const Text(
          'Maria Vitória',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Dados da conta'),
          subtitle: const Text('Minhas informações da conta'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Implementar navegação para Dados da conta
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favoritos'),
          subtitle: const Text('Meus fornecedores favoritos'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Implementar navegação para Favoritos
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.history),
          title: const Text('Histórico de Pedidos'),
          subtitle: const Text('Histórico de pedidos já feitos'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Implementar navegação para Histórico de Pedidos
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Sair'),
          subtitle: const Text('Sair da conta'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Implementar funcionalidade de sair da conta
          },
        ),
        const Divider(),
      ],
    );
  }
}
