// ignore_for_file: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  static final SocketService _instance = SocketService._internal();

  IO.Socket? socket;

  SocketService._internal();

  Function(dynamic data)? onLoginEvent;
  Function(dynamic data)? onLogoutEvent;
  Function(dynamic data)? onNewMessageEvent;

  factory SocketService() {
    return _instance;
  }

  void connectAndListen() {
    socket ??= IO.io('http://10.0.2.2:8080/',
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket!.onConnect((data) => {
          print('Connect to Socket'),
        });

    socket!.on('session-expired', (data) {
      onLogoutEvent?.call(data);
    });

    socket!.on('session-join', (data) {
      onLoginEvent?.call(data);
    });

    socket!.on('newMessage', (data) {
      onNewMessageEvent?.call(data);
    });
  }

  void joinSession(String userId) {
    socket!.emit('user-join', userId);
  }

  void sendMessage() {
    socket!.emit('newMessage', <String, dynamic>{
      "chatId": 1,
      "msg": "hi",
      "senderUserId": 1,
      "receiverUserId": 2
    });
  }

  void dispose() {
    if (socket != null) {
      socket!.disconnect();
      socket = null;
    }
  }
}
