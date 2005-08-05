<a href="{$smarty.const.BIT_ROOT_URL}">{$siteTitle} {tr}Home{/tr}</a>

{if $gBitSystem->isFeatureActive( 'feature_calendar' ) and $gBitUser->hasPermission( 'bit_p_view_calendar' )}
|  <a href="{$smarty.const.CALENDAR_PKG_URL}index.php">{tr}Calendar{/tr}</a>
{/if}{if $gBitSystem->isPackageActive( 'categories' ) and $gBitUser->hasPermission( 'bit_p_view_categories' )}
|  <a href="{$smarty.const.CATEGORIES_PKG_URL}index.php">{tr}Categories{/tr}</a>
{/if}{if $gBitSystem->isFeatureActive( 'feature_chat' ) and $gBitUser->hasPermission( 'bit_p_chat' )}
|  <a href="{$smarty.const.CHAT_PKG_URL}index.php">{tr}Chat{/tr}</a>
{/if}{if $gBitSystem->isFeatureActive( 'feature_contact' )}
|  <a href="{$smarty.const.MESSU_PKG_URL}contact.php">{tr}Contact us{/tr}</a>
{/if}{if $gBitSystem->isFeatureActive( 'feature_games' ) and $gBitUser->hasPermission( 'bit_p_play_games' )}
|  <a href="{$smarty.const.GAMES_PKG_URL}index.php">{tr}Games{/tr}</a>
{/if}{if $gBitSystem->isFeatureActive( 'feature_stats' ) and $gBitUser->hasPermission( 'bit_p_view_stats' )}
|  <a href="{$smarty.const.STATS_PKG_URL}index.php">{tr}Statistics{/tr}</a>
{/if}

{foreach key=key item=menu from=$appMenu}
 {if $menu.title && $menu.titleUrl && $menu.template}
|  <a href="{$menu.titleUrl}">{tr}{$menu.title}{/tr}</a>
 {/if}
{/foreach}
