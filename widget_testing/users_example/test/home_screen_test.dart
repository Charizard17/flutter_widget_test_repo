import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:users_example/home_screen.dart';
import 'package:users_example/user_model.dart';

void main() {
  testWidgets(
    'displays list of users with title as name and subtitle as email',
    (tester) async {
      final users = [
        User(id: 1, name: 'Tom', email: 'tom@mail.com'),
        User(id: 2, name: 'Jim', email: 'jim@mail.com'),
      ];

      Future<List<User>> mockFetchUsers() async {
        return Future.delayed(
          const Duration(seconds: 1),
          () => users,
        );
      }

      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(
            futureUsers: mockFetchUsers(),
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // if there is any delay like the above example use pumpAndSettle instead of pump
      await tester.pumpAndSettle();

      expect(find.byType(ListView), findsOneWidget);

      expect(find.byType(ListTile), findsNWidgets(users.length));

      for (final user in users) {
        expect(find.text(user.name), findsOneWidget);
        expect(find.text(user.email), findsOneWidget);
      }
    },
  );
}
