import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        children: [
          Image.network(
              'https://assets.weforum.org/article/image/XaHpf_z51huQS_JPHs-jkPhBp0dLlxFJwt-sPLpGJB0.jpg'),
          const Divider(
            height: 30,
            thickness: 2,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Text('This is a new Widget'),
          ),
          Container(
            width: 300,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_517194189_373099.jpg'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text('Send us a message'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.feedback),
                label: const Text('Leave Feedback'),
              )
            ],
          )
        ],
      ),
    );
  }
}
