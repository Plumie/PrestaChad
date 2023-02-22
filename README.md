# PrestaChad - A modern Prestashop theme boilerplate

![PrestaChad](https://cdn.jsdelivr.net/gh/Plumie/PrestaChad/img/prestachad.jpg)

## Installation

Run the following command :
```bash
npm install
```

## Storybook

```bash
npm run storybook
```

## Dev

Start the custom vite build in watch mode : 
```bash
npm run vite-watch
```

## Build & Deploy

To build both the theme part and the custom part :
```bash
npm run vite-build
```

## Architecture

- Components are created following atomic design's guidelines and are located in the /templates/components folder
- Associated stories are located in the corresponding /stories folder
- CSS files are located in the /css folder
- Custom scripts are located in the /scripts folder while default prestashop ones are in the /js folder
- Default layout was created for bootstrap but tailwind is provided by default so feel free to replace existing classes to fit your need
