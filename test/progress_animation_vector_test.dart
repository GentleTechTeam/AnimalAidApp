import 'package:animal_aid_app/onboarding/models/progress_animation_vector.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProgressAnimationVector calculates correctly', () {
    test('For first page', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 0,
          pageNumber: 1,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0,
          to: 0.25,
        ),
      );
    });
    test('For last page', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 3,
          pageNumber: 4,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0.75,
          to: 1,
        ),
      );
    });
    test('For second page', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 1,
          pageNumber: 2,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0.25,
          to: 0.5,
        ),
      );
    });
    test('For negative last page number', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: -10,
          pageNumber: 1,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0,
          to: 0.25,
        ),
      );
    });
    test('For negative end page number', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 1,
          pageNumber: -10,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0.25,
          to: 0,
        ),
      );
    });
    test('For last page number out of length', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 10,
          pageNumber: 2,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 1,
          to: 0.5,
        ),
      );
    });
    test('For end page number out of length', () {
      expect(
        ProgressAnimationVector.calc(
          lastPageNumber: 2,
          pageNumber: 10,
          pageLength: 4,
        ),
        const ProgressAnimationVector(
          from: 0.5,
          to: 1,
        ),
      );
    });
    group('Zero length case', () {
      test('Normal animation', () {
        expect(
          ProgressAnimationVector.calc(
            lastPageNumber: 0,
            pageNumber: 1,
            pageLength: 0,
          ),
          const ProgressAnimationVector(
            from: 0,
            to: 0,
          ),
        );
      });
      test('Reverse animation', () {
        expect(
          ProgressAnimationVector.calc(
            lastPageNumber: 1,
            pageNumber: 0,
            pageLength: 0,
          ),
          const ProgressAnimationVector(
            from: 0,
            to: 0,
          ),
        );
      });
      test('Negative last page number', () {
        expect(
          ProgressAnimationVector.calc(
            lastPageNumber: -10,
            pageNumber: 1,
            pageLength: 0,
          ),
          const ProgressAnimationVector(
            from: 0,
            to: 0,
          ),
        );
      });
      test('Negative end page number', () {
        expect(
          ProgressAnimationVector.calc(
            lastPageNumber: 1,
            pageNumber: -10,
            pageLength: 0,
          ),
          const ProgressAnimationVector(
            from: 0,
            to: 0,
          ),
        );
      });
    });
  });
}
