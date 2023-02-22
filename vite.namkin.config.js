import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  build: {
    outDir: resolve(__dirname, 'assets'),
    lib: {
      entry: resolve(__dirname, 'scripts/main.js'),
      name: 'custom',
      format: ['js']
    },
    rollupOptions: {
      external: ['prestashop', 'expose-loader'],
      output: {
        manualChunks: false,
        assetFileNames: '[ext]/theme[extname]',
        chunkFileNames: 'js/custom.js',
        entryFileNames: 'js/custom.js',
      },
    },
  }
});