const js = require("@eslint/js");

module.exports = {
    files: ["**/*.js", "**/*.jsx", "**/*.ts", "**/*.tsx"],
    languageOptions: {
      ecmaVersion: "latest",
      sourceType: "module",
    },
    rules: {
      "eqeqeq": ["warn", "always"],  
      "no-unused-vars": "warn",
      "no-console": "warn",
      "no-var": "warn",
    },
  }
