import 'package:flutter_complete_guide/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // given when then

  group('Counter Class – ', () {
    test(
      'given counter class when it is instantiated then value of count should be 0',
      () {
        // Arrange
        final Counter counter = Counter();

        // Act
        final val = counter.count;

        // Assert
        expect(val, 0);
      },
    );

    test(
      'given counter class when it is incremented then the value of count should be 1',
      () {
        // Arrange
        final Counter counter = Counter();

        // Act
        counter.incrementCounter();
        final val = counter.count;

        // Assert
        expect(val, 1);
      },
    );

    test(
      'given counter class when it is decremented then the value of count should be -1',
      () {
        // Arrange
        final Counter counter = Counter();

        // Act
        counter.decrementCounter();
        final val = counter.count;

        // Assert
        expect(val, -1);
      },
    );
  });
}
