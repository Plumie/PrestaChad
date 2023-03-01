const path = require('path');
const { resolve } = require('path');

module.exports = {
  "stories": [
    "../templates/components/**/*.stories.mdx",
    "../templates/components/**/*.stories.@(js|jsx|ts|tsx)",
  ],
  "addons": [
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@storybook/addon-interactions",
     {
      name: 'storybook-addon-sass-postcss',
      options: {
        postcssLoaderOptions: {
          implementation: require('postcss'),
        },
        loadSassAfterPostCSS: true,
        rule: {
          test: /\.(sa|sc)ss$/,
        },
      },
    },
  ],
  "framework": "@storybook/html",
  "core": {
    "builder": "@storybook/builder-webpack5"
  },
  webpackFinal: async (config) => {
    config.module.rules.push({
      test: /\.tpl|\.smarty$/,
      loader: "jsmart-loader",
    }),
    config.resolve.alias = {
      ...config.resolve.alias,
      '@': path.resolve(__dirname, './../'),
      '@scripts': resolve(__dirname, './../scripts'),
    }
    return config;
  }
}
