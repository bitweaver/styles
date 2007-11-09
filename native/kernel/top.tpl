<div id="bittop">
  <div class="toplogin">
      {if $gBitUser->isRegistered()}
          {tr}logged in as{/tr} {displayname}<br /><a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
      {else}
          {assign var=force_secure value=$gBitSystem->isFeatureActive("site_https_login_required")}
          {form ipackage="users" ifile="validate.php" secure=$force_secure}
              <input type="text" name="user" alt="user name" size="10" value="username" onfocus="this.value=''" /><br />
              <input type="password" name="pass" alt="password" size="10" value="password" onfocus="this.value=''" /><br />
              <input type="image" src="{$smarty.const.THEMES_PKG_URL}styles/native/images/login.gif" style="border:0;" name="login" value="{tr}login{/tr}" />
              {if $gBitSystem->getConfig('users_remember_me') ne 'disabled'}
                  <input type="hidden" name="rme" id="rme" value="on" />
              {/if}
              {if $gBitSystem->isFeatureActive( 'users_allow_register' )}
                  <br /><a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
              {/if}
          {/form}
      {/if}
  </div>
  <h1>{$gBitSystem->getConfig('site_title')|default:"bitweaver"}</h1>
  <h2>{$gBitSystem->getConfig('site_slogan')}</h2>
            
</div>
