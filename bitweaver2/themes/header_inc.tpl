{* $Header: /cvsroot/bitweaver/_bit_styles/bitweaver2/themes/header_inc.tpl,v 1.4 2007/03/23 00:19:46 laetzer Exp $ *}
{strip}
{* if $gBitSystem->isFeatureActive( 'site_style_layout' )}
	<link rel="stylesheet" title="{$style}" type="text/css" href="{$smarty.const.THEMES_PKG_URL}layouts/{$gBitSystem->getConfig('site_style_layout')}.css" media="all" />
{/if *}
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
	#top_bar p						{text-align:center;color:#fff;clear:both;text-transform:uppercase;padding:0;margin:16px 24px}
	#top_bar p						{font-size:0.5em;font-family:'Palatino Linotype',Palatino,Georgia,serif;line-height:1.4em}

	#top_bar #top ul li a			{background:#004bfa}
	#top_bar #top ul li a:visited	{background:#004bfa}

	/* 3 areas */
	#dcd							{margin:0 0 0 16px;width:95%}
	#dcd ul							{width:26%;float:left;margin:8px 0px 12px 16px;padding-top:46px}
	#dcd ul li						{list-style-type:none;padding-left:0;line-height:1.5em;margin-left:13px;font-weight:700;font-size:0.8em}
	#dcd ul li a					{text-decoration:none;padding:0 6px 0 0;border-bottom:1px solid #ddddd0}

	#dcd ul.doc li a				{color:#aa9207}
	#dcd ul.com li a				{color:#009f0b}
	#dcd ul.dev li a				{color:#005999}

	#dcd ul.doc li a:hover			{color:#fadc00;border-bottom:1px solid #fadc00}
	#dcd ul.com li a:hover			{color:#00f411;border-bottom:1px solid #00f411}
	#dcd ul.dev li a:hover			{color:#3fceee;border-bottom:1px solid #3fceee}

	/* images */
	ul.doc							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/logo_doc.gif) no-repeat left top}
	ul.com							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/logo_com.gif) no-repeat left top}
	ul.dev							{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/logo_dev.gif) no-repeat left top}

	/* arrows */
	#dcd ul.doc li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_arrow_doc.gif) no-repeat right 50%;margin:2px 0 2px 28px;padding:0;float:left}
	#dcd ul.com li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_arrow_com.gif) no-repeat right 50%;margin:2px 0 2px 28px;padding:0;float:left}
	#dcd ul.dev li em				{background:#f6f6f6 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_arrow_dev.gif) no-repeat right 50%;margin:2px 0 2px 28px;padding:0;float:left}

	#dcd ul li em a.more			{color:#121210;border:1em solid #f6f6f6;border-width:0.5em 0;margin-right:2.2em;padding:0px 4px 0px 12px;display:block;font-style:normal;text-decoration:none;font-weight:700;font-size:0.9em}
	#dcd ul li em a.more:hover		{color:#fff;border-bottom-width:0.5em;border-bottom-color:#f6f6f6}

	#dcd ul.doc li em a.more		{background:#fadc00 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_more_doc.gif) no-repeat left top}
	#dcd ul.com li em a.more		{background:#00f411 url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_more_com.gif) no-repeat left top}
	#dcd ul.dev li em a.more		{background:#3fceee url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/hl_more_dev.gif) no-repeat left top}

	body							{background:#006fbf url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/bg_body.gif) repeat-x}
	#navigation						{background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/bg_navigation.jpg) no-repeat left top;overflow:hidden}

</style>
{/literal}
{/if}