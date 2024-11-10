import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Reg_Provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: provider.allUsers.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: provider.allUsers.length,
        itemBuilder: (context, index) {
          final user = provider.allUsers[index];
          return ListTile(
            title: Text('${user.firstName} ${user.lastName}'),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }
}
