<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>{$browserTitle} - {$gBitSystem->getConfig('site_title')}</title>

	{* get custom header files from individual packages *}
	{foreach from=$gBitSystem->mStyles.headerIncFiles item=file}
		{include file=$file}
	{/foreach}

	<style type="text/css"><!--
	{* this is very crude and should be fixed to work with cookies that the banner is changed only every hour or so *}
	{php}
		$banner = 'banner_'.( date( H ) % 8 ).'.jpg';
		$this->assign( 'banner',$banner );
	{/php}
	#bittop {ldelim}
		background: #fff url('{$smarty.const.THEMES_STYLE_URL}images/{$banner}') top center no-repeat;
	{rdelim}
	--></style>
</head>
<body 
	{if $gBodyOnload} onload="
		{foreach from=$gBodyOnload item=loadString}
			{$loadString}
		{/foreach}"
	{/if}
>
<div style="display:none;position:absolute;top:0;left:-999em;"><a class="skip" style="position:absolute;top:0;left:-999em;width:0;height:0;" href="#content">{tr}Skip Navigation{/tr}</a></div>
{if $gBitSystem->isFeatureActive( 'site_help_popup' )}
	{popup_init src="`$smarty.const.UTIL_PKG_URL`javascript/libs/overlib.js"}
{/if}
