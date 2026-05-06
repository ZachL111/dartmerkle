import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(61, 34, 10, 58);
  assert(DomainReviewLens.score(item) == 184);
  assert(DomainReviewLens.lane(item) == 'ship');
}
