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
      entry: resolve(__dirname, 'js/theme.js'),
      name: 'theme',
      format: ['js'],
    },
    rollupOptions: {
      // external: ['prestashop', 'expose-loader', 'jquery', '$'],
      output: {
        manualChunks: false,
        assetFileNames: '[ext]/[name][extname]',
        chunkFileNames: 'js/theme.js',
        entryFileNames: 'js/theme.js',
      },
    },
  },
  resolve: {
    alias: {
      '@': resolve(__dirname, './'),
    },
  },
});
