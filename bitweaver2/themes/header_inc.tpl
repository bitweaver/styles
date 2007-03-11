{* $Header: /cvsroot/bitweaver/_bit_styles/bitweaver2/themes/header_inc.tpl,v 1.1 2007/03/11 01:41:58 laetzer Exp $ *}
{strip}
{if $gBitSystem->isFeatureActive( 'site_style_layout' )}
	<link rel="stylesheet" title="{$style}" type="text/css" href="{$smarty.const.THEMES_PKG_URL}layouts/{$gBitSystem->getConfig('site_style_layout')}.css" media="all" />
{/if}
{if $gBitSystem->mStyles.styleSheet}
	<link rel="stylesheet" title="{$style}" type="text/css" href="{$gBitSystem->mStyles.styleSheet}" media="all" />
{/if}
{if $gBitSystem->mStyles.browserStyleSheet}
	<link rel="stylesheet" title="{$style}" type="text/css" href="{$gBitSystem->mStyles.browserStyleSheet}" media="all" />
{/if}
{if $gBitSystem->mStyles.customStyleSheet}
	<link rel="stylesheet" title="{$style}" type="text/css" href="{$gBitSystem->mStyles.custumStyleSheet}" media="all" />
{/if}
{foreach from=$gBitSystem->mStyles.altStyleSheets item=alt_path key=alt_name}
	<link rel="alternate stylesheet" title="{$alt_name}" type="text/css" href="{$alt_path}" media="screen" />
{/foreach}

{if $loadMultiFile}
	<script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/libs/multifile.js"></script>
{/if}

{if $gBitSystem->isFeatureActive('site_top_bar_js') && $gBitSystem->isFeatureActive('site_top_bar') && $gBitSystem->isFeatureActive('site_top_bar_dropdown')}
	<script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/libs/fsmenu.js"></script>
{/if}

{if !$gBitSystem->isFeatureActive('site_disable_jstabs')}
	<script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/libs/tabpane.js"></script>
{/if}
{/strip}

{if $loadThemesCss}
	{literal}
	<style type="text/css">
		div#themeapprove	{position:fixed; color:#000; z-index:1000000; bottom:10px; right:10px; width:400px; background:#fff; border:3px solid #999; padding:20px; text-align:center; opacity:0.8;}
		div#themeapprove a	{display:block; float:left; margin:10px; padding:20px 71px; background:#eee; border:1px solid #ccc; vertical-align:middle;}
		div#themeapprove a:hover	{background-color:#b83;}
		ul#layoutgala		{list-style:none; margin:0; padding:0;}
		ul#layoutgala li	{list-style:none; float:left; display:inline; margin:0 0 0.5em 0.5em; width:120px; text-align:center}
		ul#layoutgala li a	{height:160px; display:block; line-height:1.2em; padding:0.5em 0;}
	</style>
	{/literal}
{/if}

{* drag and drop javascript doesn't work with fat loaded - hardcode css for now *}
{if $loadDragDrop}
	<script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/libs/drag/dragdrop.js"></script>

	{literal}
	<style type="text/css">
		ul.boxy,
		ul.boxy li			{min-height:2em; list-style-type:none; border:#ccc solid 1px; padding:4px 4px 0 4px; margin:0px; border:#ccc 1px solid;}
		ul.boxy				{background:#fff; margin:0px;}
		ul.boxy li			{cursor:move; margin:0 0 4px 0; padding:2px;}
		ul.boxy li			{position:relative; width:250px;}
		.layout ul.boxy li	{position:relative !important; width:auto !important;}
		ul#left li			{background:#bfc;}
		ul#center li		{background:#fda;}
		ul#right li			{background:#cbf;}
	</style>

	<script type="text/javascript">//<![CDATA[
		window.onload = function() {
			var list = $( "left" );
			DragDrop.makeListContainer( list, 'side_columns' );
			list.onDragOver = function() { this.style["background"] = "#feb"; };
			list.onDragOut = function() {this.style["background"] = "none"; };

			list = $( "center" );
			DragDrop.makeListContainer( list, 'center_column' );
			list.onDragOver = function() { this.style["background"] = "#dfe"; };
			list.onDragOut = function() {this.style["background"] = "none"; };

			list = $( "right" );
			DragDrop.makeListContainer( list, 'side_columns' );
			list.onDragOver = function() { this.style["background"] = "#feb"; };
			list.onDragOut = function() {this.style["background"] = "none"; };
		};

		function getSort( id ) {
			order = $( id );
			order.value = DragDrop.serData( id, null );
		}
	//]]></script>
	{/literal}
{elseif !$gBitSystem->getConfig('site_disable_fat')}
	<script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/libs/fat.js"></script>
{/if}

{* this is required for drop menus to work properly on MSIE. Do not remove until all issues are fully handled. - spiderr *}
{if $gBrowserInfo.browser eq 'ie'}
      <!-- this wierdness fixes png display and CSS driven dropdown menus in GUESS WHAT BROWSER -->
      <!--[if lt IE 7]>
      <script type="text/javascript">
                 IE7_PNG_SUFFIX = ".png";
      </script>
      <script type="text/javascript" src="{$smarty.const.UTIL_PKG_URL}javascript/fixes/ie7/ie7-standard-p.js"></script>
      <![endif]-->
{/if}



{if $SCRIPT_NAME eq '/articles/index.php'}
{literal}
<style type="text/css" media="all">

	/* splash column */
	#top_bar						{clear:both;margin:0;padding:0}
	#top_bar #logo					{padding:240px 0 0 0;display:block;clear:both;margin:0 auto;overflow:hidden;z-index:1;position:relative;background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/bitweaver_contentmanagement.jpg) no-repeat center top}
	#top_bar #logo p				{text-align:center;color:#fadc00;clear:both;max-width:26em;text-transform:uppercase;padding:0;margin:0 auto}
	#top_bar #logo p				{font-size:0.6em;font-family:'Palatino Linotype',Palatino,Georgia,serif;line-height:1.4em}
	                        		
	/* 3 areas */
	#dcd							{margin:0 0 0 24px}
	#dcd ul							{width:28%;float:left;margin:16px 0 0 0;padding-top:44px}
	#dcd ul li						{padding-left:0;line-height:1.4em;list-style-type:circle;margin-left:18px;font-weight:500}
	#dcd ul li a					{text-decoration:none;padding:0 6px 0 0}
	#dcd ul li a:visited			{color:#000000}
	#dcd ul li a:hover				{color:#fadc00}

	#dcd ul.doc li					{color:#bfa408}
	#dcd ul.com li					{color:#aa3f20}
	#dcd ul.dev li					{color:#005999}
	#dcd ul.doc li:hover			{list-style-type:disc}
	#dcd ul.com li:hover			{list-style-type:disc}
	#dcd ul.dev li:hover			{list-style-type:disc}
                            		
	#dcd ul.doc li a				{color:#bfa408;border-bottom:1px solid #bfa408}
	#dcd ul.com li a				{color:#aa3f20;border-bottom:1px solid #aa3f20}
	#dcd ul.dev li a				{color:#005999;border-bottom:1px solid #005999}
	#dcd ul.doc li a:hover			{}
	#dcd ul.com li a:hover			{}
	#dcd ul.dev li a:hover			{}
	                        		
	/* read more */
	#dcd ul.doc li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/doc_arrow.gif) no-repeat right 50%;margin:6px 0;padding:0;float:left}
	#dcd ul.com li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/com_arrow.gif) no-repeat right 50%;margin:6px 0;padding:0;float:left}
	#dcd ul.dev li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/dev_arrow.gif) no-repeat right 50%;margin:6px 0;padding:0;float:left}

	/* images */            		
	ul.doc							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/doc_logo.gif) no-repeat left top}
	ul.com							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/com_logo.gif) no-repeat left top}
	ul.dev							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/dev_logo.gif) no-repeat left top}
	#dcd ul li em a.arrow			{border:1em solid #f6f6f6;border-width:0.5em 0;margin-right:2.5em;padding:0;color:#fff;display:block;font-style:normal;font-size:0.7em;text-decoration:none;font-weight:700}
	
	/* top_bar: download | home | demo */
	#articles #top ul 				{text-align:center;margin:16px 0}
	#articles #top ul li			{text-align:center;display:inline}
	#articles #top ul li a			{color:#ffffff;background:#005999}
	#articles #top ul li a:visited	{color:#ffffff;background:#005999}
	#articles #top ul li a:hover	{color:#ffffff;background:#3fceee}

</style>
{/literal}
{/if}