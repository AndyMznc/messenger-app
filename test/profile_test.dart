import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_messenger/models/profile.dart';

void main() {
  group('Profile', () {
    test('fromMap creates an instance of Profile', () {
      final map = {
        'id': 'user123',
        'username': 'john_doe',
        'created_at': '2020-01-01T12:00:00.000Z',
      };

      final profile = Profile.fromMap(map);

      expect(profile.id, 'user123');
      expect(profile.username, 'john_doe');
      expect(profile.createdAt, DateTime.parse('2020-01-01T12:00:00.000Z'));
    });
  });
}
