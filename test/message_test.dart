import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_messenger/models/message.dart';

void main() {
  group('Message', () {
    test('fromMap creates an instance of Message', () {
      final map = {
        'id': '1',
        'profile_id': 'user123',
        'content': 'Hello, world!',
        'created_at': '2020-01-01T12:00:00.000Z',
      };

      final message = Message.fromMap(map: map, myUserId: 'user123');

      expect(message.id, '1');
      expect(message.profileId, 'user123');
      expect(message.content, 'Hello, world!');
      expect(message.createdAt, DateTime.parse('2020-01-01T12:00:00.000Z'));
      expect(message.isMine, true);
    });
  });
}
