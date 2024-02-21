import 'package:flutter/material.dart';

enum TaskCategory {
  education(Icons.school, Color.fromARGB(255, 68, 88, 69)),
  health(Icons.favorite, Color.fromARGB(255, 231, 0, 0)),
  home(Icons.home, Colors.green),
  others(Icons.calendar_month, Colors.purple),
  personal(Icons.person, Colors.pink),
  shopping(Icons.shopping_bag, Colors.brown),
  social(Icons.people, Colors.deepOrange),
  travel(Icons.flight, Colors.amber),

  work(Icons.work, Colors.red);

  final IconData icon;
  final Color color;
  const TaskCategory(this.icon, this.color);
}
