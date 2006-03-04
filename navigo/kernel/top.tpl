{strip}
<div id="bittop">
	{php}
		global $gBitSmarty;
		$x = (rand() % 3) + 1;
		$gBitSmarty->assign( 'x', $x );
	{/php}
	<img alt="{$site_slogan}" src="{$smarty.const.THEMES_PKG_URL}styles/navigo/images/slogan.gif"/>

	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="700" height="88">
		<param name="movie" value="{$smarty.const.THEMES_PKG_URL}styles/navigo/images/image{$x}.swf">
		<param name="quality" value="high">
		<embed src="{$smarty.const.THEMES_PKG_URL}styles/navigo/images/image{$x}.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="700" height="88">
	</object>
	{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}
</div>
{/strip}
