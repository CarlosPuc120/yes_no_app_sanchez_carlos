//Indentidad atómica: la unidad más pequeña de un sistema

enum FromWhO { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWhO fromWhO;

  Message({required this.text,this.imageUrl, required this.fromWhO});
} 