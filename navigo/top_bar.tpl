<a href="{$gBitLoc.BIT_ROOT_URL}">{$siteTitle} {tr}Home{/tr}</a>

{if $gBitSystemPrefs.feature_calendar eq 'y' and $gBitUser->hasPermission( 'bit_p_view_calendar' )}
|  <a href="{$gBitLoc.CALENDAR_PKG_URL}index.php">{tr}Calendar{/tr}</a>
{/if}{if $gBitSystemPrefs.package_categories eq 'y' and $gBitUser->hasPermission( 'bit_p_view_categories' )}
|  <a href="{$gBitLoc.CATEGORIES_PKG_URL}index.php">{tr}Categories{/tr}</a>
{/if}{if $gBitSystemPrefs.feature_chat eq 'y' and $gBitUser->hasPermission( 'bit_p_chat' )}
|  <a href="{$gBitLoc.CHAT_PKG_URL}index.php">{tr}Chat{/tr}</a>
{/if}{if $gBitSystemPrefs.feature_contact eq 'y'}
|  <a href="{$gBitLoc.MESSU_PKG_URL}contact.php">{tr}Contact us{/tr}</a>
{/if}{if $gBitSystemPrefs.feature_games eq 'y' and $gBitUser->hasPermission( 'bit_p_play_games' )}
|  <a href="{$gBitLoc.GAMES_PKG_URL}index.php">{tr}Games{/tr}</a>
{/if}{if $gBitSystemPrefs.feature_stats eq 'y' and $gBitUser->hasPermission( 'bit_p_view_stats' )}
|  <a href="{$gBitLoc.STATS_PKG_URL}index.php">{tr}Statistics{/tr}</a>
{/if}

{foreach key=key item=menu from=$appMenu}
 {if $menu.title && $menu.titleUrl && $menu.template}
|  <a href="{$menu.titleUrl}">{tr}{$menu.title}{/tr}</a>
 {/if}
{/foreach}
