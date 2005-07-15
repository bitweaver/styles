{* $Header: /cvsroot/bitweaver/_bit_styles/mambo/kernel/Attic/header.tpl,v 1.3.2.2 2005/07/15 12:01:24 squareing Exp $ *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>{$browserTitle} - {$siteTitle}</title>

	{* get custom header files from individual packages *}
	{foreach from=$gBitLoc.headerIncFiles item=file}
		{include file=$file}
	{/foreach}

	<style type="text/css">
	<!--
	{* this is very crude and should be fixed to work with cookies that the banner is changed only every hour or so *}
	{php}
		$banner = 'banner_'.( date( H ) % 8 ).'.jpg';
		$this->assign( 'banner',$banner );
	{/php}
	#bittop {literal}{{/literal}
		background: #fff url('{$gBitLoc.THEMES_STYLE_URL}images/{$banner}') top center no-repeat;
	{literal}}{/literal}
	-->
	</style>
</head>

<body>
{if $minical_reminders>100}
	<iframe width="0" height="0" border="0" src="{$gBitLoc.CALENDAR_PKG_URL}minical_reminders.php" />
{/if}
{if $gBitSystem->isFeatureActive( 'feature_helppopup' )}
	{popup_init src="`$gBitLoc.THEMES_PKG_URL`js/overlib.js"}
{/if}
