import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_messenger/models/profile.dart';

void main() {
  test('Profile is created correctly', () {
    final profile = Profile(
      id: 'user1',
      username: 'User',
      createdAt: DateTime.now(),
    );

    expect(profile.id, 'user1');
    expect(profile.username, 'User');
  });
}
