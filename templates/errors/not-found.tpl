<section id="content">
  {block name='page_content'}
    {block name="error_content"}
      {if isset($errorContent)}
        {$errorContent nofilter}
      {else}
        <h4>{l s='This page could not be found' d='Shop.Theme.Global'}</h4>
        <p>{l s='Try to search our catalog, you may find what you are looking for!' d='Shop.Theme.Global'}</p>
      {/if}
    {/block}

    {block name='search'}
      {hook h='displaySearch'}
    {/block}

    {block name='hook_not_found'}
      {hook h='displayNotFound'}
    {/block}
  {/block}
</section>
