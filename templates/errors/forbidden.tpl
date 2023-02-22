{extends file=$layout}

{block name='content'}

  {block name='page_header_container'}
    <header> 
      <div class="logo"><img src="{$shop.logo}" alt="logo" loading="lazy"></div>
        {block name='page_header'}
          <h1>{block name='page_title'}{$shop.name}{/block}</h1>
        {/block}
    </header>
  {/block}

  {block name='page_content_container'}
    <section id="content"> 
        {block name='page_content'}
          <h2>{l s='403 Forbidden' d='Shop.Theme.Global'}</h2>
          <p>{l s="You are not allowed to access this page." d="Shop.Theme.Global"}</p>
        {/block}
    </section>
  {/block}

  {block name='page_footer_container'}

  {/block}
{/block}
