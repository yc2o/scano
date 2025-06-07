class ScanData {
  final String id;
  final String title;
  final DateTime date;
  final String content;

  ScanData({
    required this.id,
    required this.title,
    required this.date,
    required this.content,
  });
}

final List<ScanData> scanDataMockList = [
  ScanData(
    id: "1",
    title: "Meeting Notes - Project Planning",
    date: DateTime.now().subtract(Duration(days: 1)),
    content: "Discussed project timeline, resource allocation, and key milestones. Next meeting scheduled for next week.",
  ),
  ScanData(
    id: "2", 
    title: "Shopping List",
    date: DateTime.now().subtract(Duration(days: 2)),
    content: "Milk, Bread, Eggs, Chicken, Rice, Vegetables, Fruits, Snacks for the weekend party.",
  ),
  ScanData(
    id: "3",
    title: "Book Summary - Flutter Developmentaaaaaaaaaaaaaaaaaaa",
    date: DateTime.now().subtract(Duration(days: 3)),
    content: "Key concepts: Widgets, State management, Navigation, API integration, Testing strategies, and deployment process.",
  ),
  ScanData(
    id: "4",
    title: "Travel Itinerary - Bali Trip",
    date: DateTime.now().subtract(Duration(days: 4)),
    content: "Day 1: Arrival & Ubud exploration. Day 2: Temple visits. Day 3: Beach activities. Day 4: Cultural shows and departure.",
  ),
  ScanData(
    id: "5",
    title: "Recipe - Nasi Goreng Special",
    date: DateTime.now().subtract(Duration(days: 5)),
    content: "Ingredients: Rice, eggs, chicken, soy sauce, chili, vegetables. Cooking time: 15 minutes. Serves 2-3 people.",
  ),
];