import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  build: {
    outDir: resolve(__dirname, 'assets'),
    emptyOutDir: false,
    lib: {
      entry: resolve(__dirname, 'js/theme.js'),
      name: 'theme',
      format: ['js']
    },
    rollupOptions: {
      external: ['prestashop', 'expose-loader'],
      output: {
        manualChunks: false,
        assetFileNames: '[ext]/[name][extname]',
        chunkFileNames: 'js/theme.js',
        entryFileNames: 'js/theme.js',
      },
    },
  }
});
