const path = require('path'); 

module.exports = {
  "stories": [
    "../stories/**/*.stories.mdx",
    "../stories/**/*.stories.@(js|jsx|ts|tsx)"
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
    }
    return config;
  }
}
