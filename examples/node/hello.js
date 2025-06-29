/**
 * Simple Hello World example for Node.js
 */

/**
 * Return a greeting message
 * @param {string} name - The name to greet
 * @returns {string} A greeting string
 */
function greet(name = 'World') {
  return `Hello, ${name}!`;
}

/**
 * Main function
 */
function main() {
  console.log(greet());
  console.log(greet('Agent'));
}

// Export for testing
module.exports = { greet };

// Run if this is the main module
if (require.main === module) {
  main();
}
