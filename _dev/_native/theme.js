import 'bootstrap/dist/js/bootstrap.min';
import 'flexibility';
import 'bootstrap-touchspin';
import 'jquery-touchswipe';
import './selectors';

import './responsive';
import './checkout';
import './customer';
import './listing';
import './product';
import './cart';

import prestashop from 'prestashop';
import EventEmitter from 'events';
import DropDown from './components/drop-down';
import Form from './components/form';
import usePasswordPolicy from './components/usePasswordPolicy';
import ProductMinitature from './components/product-miniature';
import ProductSelect from './components/product-select';
import TopMenu from './components/top-menu';

import './lib/bootstrap-filestyle.min';
import './lib/jquery.scrollbox.min';

import './components/block-cart';
import $ from 'jquery';
/* eslint-enable */

// "inherit" EventEmitter
// eslint-disable-next-line
for (const i in EventEmitter.prototype) {
  prestashop[i] = EventEmitter.prototype[i];
}

$(document).ready(() => {
  const dropDownEl = $('.js-dropdown');
  const form = new Form();
  const topMenuEl = $('.js-top-menu ul[data-depth="0"]');
  const dropDown = new DropDown(dropDownEl);
  const topMenu = new TopMenu(topMenuEl);
  const productMinitature = new ProductMinitature();
  const productSelect = new ProductSelect();
  dropDown.init();
  form.init();
  topMenu.init();
  productMinitature.init();
  productSelect.init();
  usePasswordPolicy('.field-password-policy');

  $('.carousel[data-touch="true"]').swipe({
    swipe(event, direction) {
      if (direction === 'left') {
        $(this).carousel('next');
      }
      if (direction === 'right') {
        $(this).carousel('prev');
      }
    },
    allowPageScroll: 'vertical',
  });
});
