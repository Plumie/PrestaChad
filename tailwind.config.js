/** @type {import('tailwindcss').Config} */

const tokens = require('./_dev/styles/tokens');

module.exports = {
  content: ['./templates/**/*.{html,js,tpl}'],
  theme: {
    extend: {
      ...tokens,
    },
  },
  plugins: [],
};
