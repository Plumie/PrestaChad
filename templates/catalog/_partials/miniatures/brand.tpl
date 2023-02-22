{block name='brand_miniature_item'}
  <li class="brand">
    <div class="brand-img"><a href="{$brand.url}"><img src="{$brand.image}" alt="{$brand.name}" loading="lazy"></a></div>
    <div class="brand-infos">
      <p><a href="{$brand.url}">{$brand.name}</a></p>
      {$brand.text nofilter}
    </div>
    <div class="brand-products">
      <a href="{$brand.url}">{$brand.nb_products}</a>
      <a href="{$brand.url}">{l s='View products' d='Shop.Theme.Actions'}</a>
    </div>
  </li>
{/block}
