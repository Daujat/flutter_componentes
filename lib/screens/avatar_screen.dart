import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('David Mike',
        style: TextStyle(color: Colors.white),),
        actions: const [
          CircleAvatar(
            child: Text('DM'),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          child: CircleAvatar(
            maxRadius: 160,
            backgroundImage: NetworkImage('https://i.pinimg.com/736x/74/12/1b/74121b488a976c9d537c7a8fd6ed4b3d.jpg'),
          ),
        ),
      )
    );
  }

}

