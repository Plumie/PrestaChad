const templateContext = require.context('@/templates', true, /\.(runtime|asset|style)\.(.*?)$/);
templateContext.keys().forEach(templateContext);
