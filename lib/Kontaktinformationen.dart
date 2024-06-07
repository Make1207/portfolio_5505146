import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio von Marcel Kempel",
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(100, 215, 215, 215)),
      home: const PortfolioPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        backgroundColor: const Color.fromARGB(255, 128, 186, 36),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Ueberschrift(),
          UeberMich(),
        //    Lebenslauf(),
        //    Faehigkeiten(),
            Fusszeile(),
          ],
        ),
      ),
    );
  }
}

class Ueberschrift extends StatelessWidget {
  const Ueberschrift({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromARGB(255, 128, 186, 36),
      child: const Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://www.museumize.com/cdn/shop/products/42d69af387d6044850ae79ca5e5acb5d_1024x1024@2x.jpg?v=1582156263"),
          ),
          SizedBox(height: 10),
          Text(
            "Marcel Kempel",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Text(
            "THM Student",
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class UeberMich extends StatelessWidget {
  const UeberMich({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kontaktinformationen",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Handy: +4915789048153 \n\nEmail: Marcelkempel127@gmail.com \n\nAdresse: 61169 Friedberg\nSteinkaute 4   Ak07 ",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Lebenslauf extends StatelessWidget {
  const Lebenslauf({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lebenslauf",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ExperienceItem(
            title: "THM",
            description: "Studium mit kleinen Projekten",
          ),
          ExperienceItem(
            title: 'Bundeswehr',
            description: "Aufklärer bei der Bundeswehr",
          ),
          ExperienceItem(
            title: "Abitur",
            description: "Abitur an dem GSG Winterberg",
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;

  final String description;

  const ExperienceItem(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String title;

  const EducationItem({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}

class Faehigkeiten extends StatelessWidget {
  const Faehigkeiten({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fähigkeiten',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SkillChip(skill: 'Java'),
              SkillChip(skill: 'Flutter'),
              SkillChip(skill: 'Dart'),
              SkillChip(skill: 'SQL'),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String skill;

  const SkillChip({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(skill),
      backgroundColor: const Color.fromARGB(255, 128, 186, 36),
    );
  }
}

class Fusszeile extends StatelessWidget {
  const Fusszeile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromARGB(255, 128, 186, 36),
      child: Column(
        children: [
          const Text(
            'Marcel Kempel',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'Contact me:',
            style: TextStyle(color: Colors.white70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.local_phone_sharp),
                color: Colors.white,
                tooltip: "+4915789048153",
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.email),
                color: Colors.white,
                tooltip: "Marcelkempel127@gmail.com",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
