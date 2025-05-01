import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  timeDilation = 5.0;
  runApp(const EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event App',
      debugShowCheckedModeBanner: false,
      home: EventListScreen(),
    );
  }
}

class Event {
  final String title;
  final String imagePath;
  final String date;
  final String location;
  final String description;

  Event({
    required this.title,
    required this.imagePath,
    required this.date,
    required this.location,
    required this.description,
  });
}

class EventListScreen extends StatelessWidget {
  EventListScreen({super.key});

  final List<Event> events = [
    Event(
      title: 'Tech Conference 2025',
      imagePath: 'assets/images/tech.png',
      date: 'June 20, 2025',
      location: 'Expo Center, Karachi',
      description:
          ' Tech Conference 2025, the premier global gathering of visionaries, innovators, and tech leaders shaping the future. Join us as we explore the latest breakthroughs in AI, quantum computing, sustainable tech, cybersecurity, Web3, and beyond.',
    ),
    Event(
      title: 'Music Fest',
      imagePath: 'assets/images/music.png',
      date: 'May 10, 2025',
      location: 'Beach View Park, Karachi',
      description:
          'Get ready for the ultimate sonic experience at Music Fest 2025—a boundary-pushing celebration of music, culture, and next-level production. This isn’t just a festival; it’s a multi-sensory journey blending chart-topping headliners, underground pioneers, and immersive tech-driven performances.',
    ),
    Event(
      title: 'PW Autoshow',
      imagePath: 'assets/images/autoshow.png',
      date: 'July 5, 2025',
      location: 'Expo Center, Lahore',
      description:
          'Step into the future of mobility at AutoShow 2025, the world’s most anticipated showcase of cutting-edge vehicles, breakthrough tech, and automotive excellence. From hypercars to self-driving marvels, this is your front-row seat to the next era of transportation.',
    ),
    Event(
      title: 'Book Fair 2025',
      imagePath: 'assets/images/books.png',
      date: 'August 12, 2025',
      location: 'Arts Council, Karachi',
      description:
          'Immerse yourself in the magic of literature at Book Fair 2025, the ultimate celebration of books, authors, and the power of storytelling. From bestselling novels to hidden indie gems, this is a paradise for book lovers, writers, and dreamers alike.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Events'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EventDetailScreen(event: event),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              margin: const EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [
                  Hero(
                    tag: event.imagePath,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        event.imagePath,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.title,
                          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${event.date} • ${event.location}',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class EventDetailScreen extends StatelessWidget {
  final Event event;

  const EventDetailScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: event.imagePath,
            child: Image.asset(
              event.imagePath,
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.date_range),
                    const SizedBox(width: 8),
                    Text(event.date),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.location_on),
                    const SizedBox(width: 8),
                    Text(event.location),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  event.description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
