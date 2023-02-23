import Example from './example.tpl';

const Default = () => Example({
  content: 'Default Exemple'
});

export default {
  title: 'Atoms/Example',
};

const templates = {
  default: (args) => Default(args),
};

export const DefaultExample = templates.default.bind({});
