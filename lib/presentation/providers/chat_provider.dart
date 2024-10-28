import 'package:flutter/material.dart';
import 'package:yes_no_app_sanchez_carlos/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  List<Message> messageList =[
    Message(text:"hola ader", fromWhO: FromWhO.me ),
    Message(text: "¿estas llorando por que reprobaste topicos?", fromWhO: FromWhO.me)
];
//controlador para manejar la posicion de scroll
final ScrollController chatScrollController = ScrollController();


// Enviar un mensaje
Future<void>sendMessage(String text) async{
// El mensaje
final newMessage = Message(text: text, fromWhO: FromWhO.me);
//Agrega un elemento a la lista "messageList"
messageList.add(newMessage);
//notifica si algo de porvider cambio para que se guarde en el estado
notifyListeners();
// mueve el scroll
moveScrollBotom();
}
//mover el scroll al último mensaje

Future<void> moveScrollBotom() async{

// un pequeño atraso en la animacion para garantizar siempre 
// se vera aun que cuando se envie mensajes cortos y rapidos
  await Future.delayed(const Duration(seconds: 1));
  chatScrollController.animateTo(
    // offset: posiscion de la animacion
    // maxScrollExtent determina a lo maximo que el scroll puede dar
    chatScrollController.position.maxScrollExtent,
    //duracion de la animacion 
    duration: const Duration(milliseconds: 300), 
    // "rebote" al final de la animacion 
    curve: Curves.easeOut
    );
  }
 }

