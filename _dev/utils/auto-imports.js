// const templateContext = require.context('@/templates', true, /\.(runtime|asset|style)\.(.*?)$/);
// templateContext.keys().forEach(templateContext);

const modules = import.meta.glob([
  '!@root/assets/**/*.{scss,js,ts}',
  '@root/**/*.style.scss',
  '@root/**/*.runtime.{js,ts}',
]);

Object.values(modules).forEach(o => o());
