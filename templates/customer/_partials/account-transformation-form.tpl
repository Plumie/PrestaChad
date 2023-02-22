{block name='account_transformation_form'}
  <h4>{l s='Save time on your next order, sign up now' d='Shop.Theme.Checkout'}</h4>
  <ul>
    <li> - {l s='Personalized and secure access' d='Shop.Theme.Customeraccount'}</li>
    <li> - {l s='Fast and easy checkout' d='Shop.Theme.Customeraccount'}</li>
    <li> - {l s='Easier merchandise return' d='Shop.Theme.Customeraccount'}</li>
  </ul>
  <form method="post">
    <div class="form-group">
      <label class="form-control-label required" for="field-email">
        {l s='Set your password:' d='Shop.Forms.Labels'}
      </label>
      <input type="password" class="form-control" data-validate="isPasswd" required name="password" value="">
    </div>
    <footer class="form-footer">
      <input type="hidden" name="submitTransformGuestToCustomer" value="1">
      <button class="btn btn-primary" type="submit">{l s='Create account' d='Shop.Theme.Actions'}</button>
    </footer>
  </form>
{/block}
