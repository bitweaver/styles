{* $Header: /cvsroot/bitweaver/_bit_styles/mambo/kernel/Attic/header.tpl,v 1.3.2.4 2005/09/20 09:27:19 squareing Exp $ *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>{$browserTitle} - {$siteTitle}</title>

	{* get custom header files from individual packages *}
	{foreach from=$gBitSystem->mStyles.headerIncFiles item=file}
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
		background: #fff url('{$smarty.const.THEMES_STYLE_URL}images/{$banner}') top center no-repeat;
	{literal}}{/literal}
	-->
	</style>
</head>

<body>
<div style="display:none;position:absolute;top:0;left:-999em;"><a class="skip" style="position:absolute;top:0;left:-999em;width:0;height:0;" href="#content">{tr}Skip Navigation{/tr}</a></div>
{if $gBitSystem->isFeatureActive( 'feature_helppopup' )}
	{popup_init src="`$smarty.const.THEMES_PKG_URL`js/overlib.js"}
{/if}
