/**
 * Tests for hello.js module
 */

const { greet } = require('./hello');

describe('greet function', () => {
  test('should greet with default name', () => {
    const result = greet();
    expect(result).toBe('Hello, World!');
  });

  test('should greet with custom name', () => {
    const result = greet('Agent');
    expect(result).toBe('Hello, Agent!');
  });

  test('should greet with empty string', () => {
    const result = greet('');
    expect(result).toBe('Hello, !');
  });
});
