import { defineConfig } from 'vite';
import { resolve } from 'path';

import VitePluginBrowserSync from 'vite-plugin-browser-sync'

export default defineConfig({
  plugins: [
    VitePluginBrowserSync({
      open: true,
      proxy: {
        target: 'http://localhost/prestashop',
      },
      src: ['assets/**/*', 'templates/**/*'],
      watchOptions: {
        usePolling: true,
        interval: 500,
      },
      ghostMode: false,
      ui: true,
    }),
  ],
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