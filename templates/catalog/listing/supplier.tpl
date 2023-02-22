{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
  <h1>{l s='List of products by supplier %s' sprintf=[$supplier.name] d='Shop.Theme.Catalog'}</h1>
  <div id="supplier-description">{$supplier.description nofilter}</div>
{/block}

{block name='product_list'}
  {include file='catalog/_partials/products.tpl' listing=$listing productClass="col-xs-12 col-sm-6 col-xl-3"}
{/block}
