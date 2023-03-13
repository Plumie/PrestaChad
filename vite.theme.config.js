import { defineConfig } from 'vite';
import { resolve } from 'path';

import { viteExternalsPlugin } from 'vite-plugin-externals';

export default defineConfig({
  plugins: [
    viteExternalsPlugin({
      prestashop: 'prestashop',
      jquery: 'jQuery',
      $: '$',
    })
  ],
  build: {
    outDir: resolve(__dirname, 'assets'),
    emptyOutDir: false,
    lib: {
      entry: resolve(__dirname, '_dev/_native/theme.js'),
      name: 'theme',
      format: ['js'],
    },
    rollupOptions: {
      // external: ['prestashop', 'expose-loader', 'jquery', '$'],
      output: {
        manualChunks: false,
        entryFileNames: 'js/theme.js',
        chunkFileNames: 'js/theme.js',
        assetFileNames: '[ext]/theme[extname]',
      },
    },
  },
  resolve: {
    alias: {
      '@': resolve(__dirname, './'),
    },
  },
});
