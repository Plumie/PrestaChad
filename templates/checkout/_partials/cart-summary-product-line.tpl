{block name='cart_summary_product_line'}
  <div class="media-left">
    <a href="{$product.url}" title="{$product.name}">
      {if $product.default_image}
        <img class="media-object" src="{$product.default_image.small.url}" alt="{$product.name}" loading="lazy">
      {else}
        <img src="{$urls.no_picture_image.bySize.small_default.url}" loading="lazy" />
      {/if}
    </a>
  </div>
  <div class="media-body">
    <span class="product-name">
        <a href="{$product.url}" target="_blank" rel="noopener noreferrer nofollow">{$product.name}</a>
    </span>
    <span class="product-quantity">x{$product.quantity}</span>
    <span class="product-price float-xs-right">{$product.price}</span>
    {hook h='displayProductPriceBlock' product=$product type="unit_price"}
    {foreach from=$product.attributes key="attribute" item="value"}
        <div class="product-line-info product-line-info-secondary text-muted">
            <span class="label">{$attribute}:</span>
            <span class="value">{$value}</span>
        </div>
    {/foreach}
    <br/>
  </div>
{/block}
