
<div class="card-block cart-summary-subtotals-container js-cart-summary-subtotals-container">

  {foreach from=$cart.subtotals item="subtotal"}
    {if $subtotal && $subtotal.value|count_characters > 0 && $subtotal.type !== 'tax'}
      <div class="cart-summary-line cart-summary-subtotals" id="cart-subtotal-{$subtotal.type}">

        <span class="label">
            {$subtotal.label}
        </span>

        <span class="value">
          {if 'discount' == $subtotal.type}-&nbsp;{/if}{$subtotal.value}
        </span>
      </div>
    {/if}
  {/foreach}

</div>

