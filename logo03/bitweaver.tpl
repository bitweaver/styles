{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}
 {if $gBitSystemPrefs.feature_bidi eq 'y'}
  <div dir="rtl">
 {/if}
 <div id="wrap1">
   <div id="tikibar">
   Welcome to {$siteTitle|default:"bitweaver"}
  </div>

  <div id="bittop">
   <div class="toplogin">
    {if !$user}
     {form ipackage="users" ifile="validate.php"}
      <input type="text" name="user" id="user" size="10" value="username" onfocus="this.value=''" /><br />
      <input type="password" name="pass" id="pass" size="10" value="password" onfocus="this.value=''" /><br />
      <input type="image" src="{$gBitLoc.THEMES_PKG_URL}styles/native/images/login.gif" style="border:0;" name="login" value="{tr}login{/tr}" />
      {if $rememberme ne 'disabled'}
       <input type="hidden" name="rme" id="rme" value="on" />
      {/if}
      {if $allowRegister eq 'y'}
       <br /><a href="{$gBitLoc.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
      {/if}
     {/form}
    {else}
     {tr}logged in as{/tr} {$user}<br /><a href="{$gBitLoc.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
    {/if}
   </div>
  </div><!-- end #bittop -->

  {if $gBitSystemPrefs.feature_top_bar eq 'y'}
      {include file="bitpackage:kernel/top_bar.tpl"}
  {/if}

  <div id="wrap2">
   <div id="wrap3">
    <div id="tikibody">
     {if $gBitSystemPrefs.feature_left_column eq 'y' && $l_modules && !$gHideModules}
      <div id="bitleft">
       {section name=homeix loop=$l_modules}
        {$l_modules[homeix].data}
       {/section}
      </div><!-- end #bitleft -->
     {/if}

     <div id="tikimain">
      {if $pageError}
       <div class="error">{$pageError}</div>
      {/if}
      {include file=$mid}
     </div><!-- end #tikimain -->

     {if $gBitSystemPrefs.feature_right_column eq 'y' && $r_modules && !$gHideModules}
      <div id="bitright">
       {section name=homeix loop=$r_modules}
        {$r_modules[homeix].data}
       {/section}
      </div><!-- end #bitright -->
     {/if}

     <div id="tikibottom">
      {if $gBitSystemPrefs.feature_bot_bar eq 'y'}
       {include file="bitpackage:kernel/bot_bar.tpl"}
      {/if}
     </div><!-- end #tikibottom -->
    </div><!-- end #tikibody -->
   </div><!-- end #wrap3 -->
  </div><!-- end #wrap2 -->
 </div><!-- end #wrap1 -->
 {if $gBitSystemPrefs.feature_bidi eq 'y'}
  </div>
 {/if}
 {include file="bitpackage:kernel/footer.tpl"}
{/if}
