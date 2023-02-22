{extends file='page.tpl'}

{block name='page_header_container'}{/block}

{if $layout === 'layouts/layout-left-column.tpl'}
  {block name="left_column"}
    <div id="left-column"> 
      {hook h='displayContactLeftColumn'}
    </div>
  {/block}
{else if $layout === 'layouts/layout-right-column.tpl'}
  {block name="right_column"}
    <div id="right-column">
      {hook h='displayContactRightColumn'}
    </div>
  {/block}
{/if}

{block name='page_content'}
  {hook h='displayContactContent'}
{/block}
