{block name='pack_miniature_item'}
  <article>
    <div class="card">
      <div class="pack-product-container">
        <div class="thumb-mask">
          <div class="mask">
            <a href="{$product.url}" title="{$product.name}">
              {if !empty($product.default_image.medium)}
                <img
                        src="{$product.default_image.medium.url}"
                        {if !empty($product.default_image.legend)}
                          alt="{$product.default_image.legend}"
                          title="{$product.default_image.legend}"
                        {else}
                          alt="{$product.name}"
                        {/if}
                        loading="lazy"
                        data-full-size-image-url="{$product.default_image.large.url}"
                >
              {else}
                <img src="{$urls.no_picture_image.bySize.medium_default.url}" loading="lazy" />
              {/if}
            </a>
          </div>
        </div>

        <div class="pack-product-name">
          <a href="{$product.url}" title="{$product.name}">
            {$product.name}
          </a>
        </div>

        {if $showPackProductsPrice}
          <div class="pack-product-price">
            <strong>{$product.price}</strong>
          </div>
        {/if}

        <div class="pack-product-quantity">
          <span>x {$product.pack_quantity}</span>
        </div>
      </div>
    </div>
  </article>
{/block}
