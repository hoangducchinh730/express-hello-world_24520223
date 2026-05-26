const test = require('node:test');
const assert = require('node:assert');

test('Dummy test to verify CI pipeline', () => {
  // Thực hiện một bài test tính toán đơn giản
  // Để sau này bạn có thể thay bằng supertest để test API của express
  const actual = 1 + 1;
  const expected = 2;
  
  assert.strictEqual(actual, expected, '1 + 1 should equal 2');
});
