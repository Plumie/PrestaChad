import { defineConfig } from 'vite';
import { resolve } from 'path';
import './gigachad.js';
import browserSync from 'browser-sync';
import dotenv from 'dotenv';

dotenv.config();
dotenv.config({ path: `.env.local`, override: true });

export default defineConfig({
  build:  {
    outDir: resolve(__dirname, 'assets'),
    emptyOutDir: false,
    lib: {
      entry: resolve(__dirname, 'scripts/main.js'),
      name: 'custom',
      format: ['es']
    },
    rollupOptions: {
      output: {
        manualChunks: false,
        assetFileNames: '[ext]/theme[extname]',
        chunkFileNames: 'js/custom.js',
        entryFileNames: 'js/custom.js',
      },
    },
  },
  resolve:{
    alias:{
      '@' : resolve(__dirname, './')
    },
  },
})

browserSync({
  proxy: process.env.BROWSERSYNC_PROXY,
  port: process.env.BROWSERSYNC_PORT,
  files: [
      resolve(__dirname, '**/*.tpl'),
      resolve(__dirname, 'css/**/*.{css,scss}'), 
      resolve(__dirname, 'scripts/**/*.js') 
  ]
});
