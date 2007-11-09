{strip}
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="generator" content="bitweaver - http://www.bitweaver.org" />
<meta name="description" content="{$gBitSystem->getConfig('site_description')}" />
<meta name="keywords" content="{$gBitSystem->getConfig('site_keywords')}" />

<link rel="shortcut icon" href="{$smarty.const.BIT_ROOT_URL}favicon.ico" type="image/x-icon" />
<link rel="icon" href="{$smarty.const.BIT_ROOT_URL}favicon.ico" type="image/x-icon" />

{* some links that help navigate the site *}
<link rel="start" title="{$gBitSystem->getConfig('site_title')} {tr}Home{/tr}" href="{$smarty.const.BIT_ROOT_URL}" />
<link rel="help" title="{tr}Help{/tr}" href="{$gBitSystem->getConfig('site_header_help')}" />
<link rel="copyright" title="{tr}Copyright{/tr}" href="{$gBitSystem->getConfig('site_header_copyright')}" />
<link rel="contents" title="{tr}Contents{/tr}" href="{$gBitSystem->getConfig('site_header_contents')}" />
<link rel="index" title="{tr}Index{/tr}" href="{$gBitSystem->getConfig('site_header_index')}" />
<link rel="glossary" title="{tr}Glossary{/tr}" href="{$gBitSystem->getConfig('site_header_glossary')}" />

{assign var=headPageUrl value="`$smarty.server.PHP_SELF`?sort_mode=`$listInfo.sort_mode`&amp;find=`$listInfo.find`"}
{if $listInfo.current_page > 1}
	<link rel="first" title="{tr}First page{/tr}" href="{$headPageUrl}&amp;list_page=1" />
	<link rel="previous" title="{tr}Previous page{/tr}" href="{$headPageUrl}&amp;list_page={$listInfo.current_page-1}" />
{/if}
{if $listInfo.current_page < $listInfo.total_pages}
	<link rel="next" title="{tr}Next page{/tr}" href="{$headPageUrl}&amp;list_page={$listInfo.current_page+1}" />
	<link rel="last" title="{tr}Last page{/tr}" href="{$headPageUrl}&amp;list_page={$listInfo.total_pages}" />
{/if}
{/strip}
