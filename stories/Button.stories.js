import {Default, Danger, Warning, Success} from './Button.js';

export default {
  title: 'Atoms/Button', 
}

const templates = {
  default: (args) => Default(args),
  danger: (args) => Danger(args), 
  warning: (args) => Warning(args), 
  success: (args) => Success(args), 
}

export const DefaultButton = templates.default.bind({});
export const DangerButton = templates.danger.bind({});
export const WarningButton = templates.warning.bind({});
export const SuccessButton = templates.success.bind({});
