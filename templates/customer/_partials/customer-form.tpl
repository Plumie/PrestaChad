{block name='customer_form'}
  {block name='customer_form_errors'}
    {include file='_partials/form-errors.tpl' errors=$errors['']}
  {/block}

<form action="{block name='customer_form_actionurl'}{$action}{/block}" id="customer-form" class="js-customer-form" method="post">
  <div>
    {block "form_fields"}
      {foreach from=$formFields item="field"}
        {block "form_field"}
          {if $field.type === "password"}
            <div class="field-password-policy">
              {form_field field=$field}
            </div>
          {else}
            {form_field field=$field}
          {/if}
        {/block}
      {/foreach}
      {$hook_create_account_form nofilter}
    {/block}
  </div>

  {block name='customer_form_footer'}
    <footer class="form-footer clearfix">
      <input type="hidden" name="submitCreate" value="1">
      {block "form_buttons"}
        <button class="btn btn-primary form-control-submit float-xs-right" data-link-action="save-customer" type="submit">
          {l s='Save' d='Shop.Theme.Actions'}
        </button>
      {/block}
    </footer>
  {/block}

</form>
{/block}
