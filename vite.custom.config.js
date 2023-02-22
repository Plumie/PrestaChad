import { defineConfig } from 'vite';
import { resolve } from 'path';
import './gigachad';

export default defineConfig({
  build: {
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
});
