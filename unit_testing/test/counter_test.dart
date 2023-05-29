import 'package:flutter_complete_guide/x_counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Counter counter;
  // Pretest
  setUp(() {
    counter = Counter();
  });

  // setUp is called before every test
  // setup -> test -> setup -> test -> setup -> test
  // setUpAll is called before all the tests
  // setup -> test -> test -> test

  // Testing
  group('Counter Class – ', () {
    // given when then
    test(
      'given counter class when it is instantiated then value of count should be 0',
      () {
        // Arrange
        // final Counter counter = Counter();

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
        // final Counter counter = Counter();

        // Act
        counter.increment();
        final val = counter.count;

        // Assert
        expect(val, 1);
      },
    );

    test(
      'given counter class when it is decremented then the value of count should be -1',
      () {
        // Arrange
        // final Counter counter = Counter();

        // Act
        counter.decrement();
        final val = counter.count;

        // Assert
        expect(val, -1);
      },
    );

    test(
        'given counter class when it is reset then the value of count should be 0',
        () {
      // Act
      counter.increment();
      counter.reset();
      final val = counter.count;

      // Assert
      expect(val, 0);
    });
  });

  // Post test
  // tearDown(() => null);
  // tearDownAll(() => null);

  // tearDown is called after every test
  // test -> tearDown -> test -> tearDown -> test -> tearDown
  // tearDownAll is called after all the tests
  // test -> test -> test -> tearDownAll
}
