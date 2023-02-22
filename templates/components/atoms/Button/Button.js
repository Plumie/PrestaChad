import Button from './button.tpl'

const Default = () => Button({
  content: 'Default Button'
});

const Danger = () => Button({
  content: 'Danger Button',
  theme: 'danger'
});

const Warning = () => Button({
  content: 'Warning Button',
  theme: 'warning'
});

const Success  = () => Button({
  content: 'Success Button',
  theme: 'success'
});

export {Default, Danger, Warning, Success}; 
