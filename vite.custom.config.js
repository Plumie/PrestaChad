import { defineConfig } from 'vite';
import { resolve } from 'path';
import './gigachad.js';
import browserSync from 'browser-sync';
import dotenv from 'dotenv';

dotenv.config();
dotenv.config({ path: `.env.local`, override: true });

export default defineConfig({
  build: {
    outDir: resolve(__dirname, 'assets'),
    emptyOutDir: false,
    lib: {
      entry: resolve(__dirname, '_dev/main.js'),
      name: 'custom',
    },
    rollupOptions: {
      output: {
        // name: 'custom'
        dir: resolve(__dirname, 'assets'),
        manualChunks: false,
        entryFileNames: 'js/custom.js',
        chunkFileNames: 'js/[name].js',
        assetFileNames: '[ext]/custom[extname]',
        // assetFileNames: '[ext]/theme[extname]',
        // chunkFileNames: 'js/custom.js',
        // entryFileNames: 'js/custom.js',
      },
    },
  },
  resolve: {
    alias: {
      '@': resolve(__dirname, './_dev'),
      '@root': resolve(__dirname, './'),
      '@scripts': resolve(__dirname, './scripts'),
      '@presta': resolve(__dirname, './../../'),
    },
  },
});

browserSync({
  open: false,
  host: 'localhost',
  proxy: process.env.BROWSERSYNC_PROXY,
  port: process.env.BROWSERSYNC_PORT,
  files: [
    resolve(__dirname, '**/*.tpl'),
    resolve(__dirname, 'css/**/*.{css,scss}'),
    resolve(__dirname, 'scripts/**/*.js'),
  ],
});
