{extends file='page.tpl'}

{block name='page_title'}
  <span class="sitemap-title">{l s='Sitemap' d='Shop.Theme.Global'}</span>
{/block}

{block name='page_content_container'}
  <div class="container-fluid">
    <div class="row sitemap col-xs-12">
        <div class="col-md-3">
          <h2>{$our_offers}</h2>
          {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.offers}
        </div>
        <div class="col-md-3">
          <h2>{$categories}</h2>
          {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.categories}
        </div>
        <div class="col-md-3">
          <h2>{$your_account}</h2>
          {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.user_account}
        </div>
        <div class="col-md-3">
          <h2>{$pages}</h2>
          {include file='cms/_partials/sitemap-nested-list.tpl' links=$links.pages}
        </div>
    </div>
  </div>
{/block}
