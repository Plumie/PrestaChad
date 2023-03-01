// const templateContext = require.context('@/templates', true, /\.(runtime|asset|style)\.(.*?)$/);
// templateContext.keys().forEach(templateContext);
const modules = import.meta.glob([
  '!@/assets/**/*.{scss,js,ts}',
  '@/**/*.style.scss',
  '@/**/*.runtime.{js,ts}',
]);

Object.values(modules).forEach(o => o());
