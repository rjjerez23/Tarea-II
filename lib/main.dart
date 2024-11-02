import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  int likes = 0; 

  void _incrementLikes() {
    setState(() {
      likes += 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Perfil Profesional',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'X',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue[200],
            child: Icon(
              Icons.person,
              color: Colors.blue[600],
              size: 40,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Rikeini Jerez',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Desarrollador Flutter',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: _incrementLikes, 
              ),
              SizedBox(width: 5),
              Text('$likes'), 
            ],
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 8,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('Firebase')),
              Chip(label: Text('Git')),
              Chip(label: Text('UI/UX')),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.facebook, color: Colors.grey[600]),
              Icon(Icons.person, color: Colors.grey[600]),
              Icon(Icons.camera_alt, color: Colors.grey[600]),
              Icon(Icons.calendar_today, color: Colors.grey[600]),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.mail),
                label: Text('Contactar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.file_download),
                label: Text('CV'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Proyectos'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '200K',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Seguidores'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '4.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Rating'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
