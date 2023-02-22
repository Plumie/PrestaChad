{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header">
    <div class="header__container">
      <div class="grid grid-cols-12">
        <div class="md:col-span-10 col-span-12">
          {hook h='displayNav1'}
        </div>
        <div class="md:col-span-2 flex gap-x-[24px]">
            <a href="{$urls.pages.cart}">
              <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path opacity="0.3" d="M4.41309 14.7307L7.34642 25.4107L24.6664 25.3974L27.5998 14.7307H4.41309ZM15.9998 22.7307C14.5331 22.7307 13.3331 21.5307 13.3331 20.064C13.3331 18.5974 14.5331 17.3974 15.9998 17.3974C17.4664 17.3974 18.6664 18.5974 18.6664 20.064C18.6664 21.5307 17.4664 22.7307 15.9998 22.7307Z" fill="#0EA8D5"/>
                <path d="M29.333 12.064H22.9463L17.1063 3.31732C16.853 2.94399 16.4263 2.75732 15.9997 2.75732C15.573 2.75732 15.1463 2.94399 14.893 3.33066L9.05301 12.064H2.66634C1.93301 12.064 1.33301 12.664 1.33301 13.3973C1.33301 13.5173 1.34634 13.6373 1.38634 13.7573L4.77301 26.1173C5.07967 27.2373 6.10634 28.064 7.33301 28.064H24.6663C25.893 28.064 26.9197 27.2373 27.2397 26.1173L30.6263 13.7573L30.6663 13.3973C30.6663 12.664 30.0663 12.064 29.333 12.064ZM15.9997 6.46399L19.733 12.064H12.2663L15.9997 6.46399ZM24.6663 25.3973L7.34634 25.4107L4.41301 14.7307H27.5997L24.6663 25.3973ZM15.9997 17.3973C14.533 17.3973 13.333 18.5973 13.333 20.064C13.333 21.5307 14.533 22.7307 15.9997 22.7307C17.4663 22.7307 18.6663 21.5307 18.6663 20.064C18.6663 18.5973 17.4663 17.3973 15.9997 17.3973Z" fill="#0EA8D5"/>
              </svg>
            </a>
            <a href="{$urls.pages.my_account}">
              <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path opacity="0.3" d="M16.0002 13.5307C17.5466 13.5307 18.8002 12.2771 18.8002 10.7307C18.8002 9.18427 17.5466 7.93066 16.0002 7.93066C14.4538 7.93066 13.2002 9.18427 13.2002 10.7307C13.2002 12.2771 14.4538 13.5307 16.0002 13.5307Z" fill="#0EA8D5"/>
                <path opacity="0.3" d="M15.9995 19.9307C12.0395 19.9307 7.86621 21.8773 7.86621 22.7307V24.1973H24.1329V22.7307C24.1329 21.8773 19.9595 19.9307 15.9995 19.9307Z" fill="#0EA8D5"/>
                <path d="M15.9997 17.3972C12.4397 17.3972 5.33301 19.1839 5.33301 22.7305V26.7305H26.6663V22.7305C26.6663 19.1839 19.5597 17.3972 15.9997 17.3972ZM24.133 24.1972H7.86634V22.7305C7.86634 21.8772 12.0397 19.9305 15.9997 19.9305C19.9597 19.9305 24.133 21.8772 24.133 22.7305V24.1972ZM15.9997 16.0639C18.9463 16.0639 21.333 13.6772 21.333 10.7305C21.333 7.78388 18.9463 5.39722 15.9997 5.39722C13.053 5.39722 10.6663 7.78388 10.6663 10.7305C10.6663 13.6772 13.053 16.0639 15.9997 16.0639ZM15.9997 7.93055C17.5463 7.93055 18.7997 9.18388 18.7997 10.7305C18.7997 12.2772 17.5463 13.5306 15.9997 13.5306C14.453 13.5306 13.1997 12.2772 13.1997 10.7305C13.1997 9.18388 14.453 7.93055 15.9997 7.93055Z" fill="#0EA8D5"/>
              </svg>
            </a>
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
       <div class="row">
        <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
          {if $shop.logo_details}
            {if $page.page_name == 'index'}
              <h1>
                {renderLogo}
              </h1>
            {else}
              {renderLogo}
            {/if}
          {/if}
        </div>
        <div class="header-top-right col-md-10 col-sm-12 position-static">
          {hook h='displayTop'}
        </div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>
    </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}
