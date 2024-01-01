import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_messenger/models/message.dart';

void main() {
  test('Message is created correctly', () {
    final message = Message(
      id: '1',
      profileId: 'user1',
      content: 'Hello',
      createdAt: DateTime.now(),
      isMine: true,
    );

    expect(message.id, '1');
    expect(message.profileId, 'user1');
    expect(message.content, 'Hello');
    expect(message.isMine, true);
  });
}
