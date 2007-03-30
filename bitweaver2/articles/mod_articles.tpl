{* $Header: /cvsroot/bitweaver/_bit_styles/bitweaver2/articles/Attic/mod_articles.tpl,v 1.1 2007/03/30 02:04:53 laetzer Exp $ *}
{strip}
{if $gBitSystem->isPackageActive( 'articles' )}
	{bitmodule title="$moduleTitle" name=$smarty.const.ARTICLES_PKG_NAME}
		<ul>
			{foreach item=modArt from=$modArticles}
				<li>
					<a href="{$modArt.display_url}">{$modArt.title|escape}</a>
				</li>
			{foreachelse}
				<li></li>
			{/foreach}
		</ul>
		<a class="more" href="{$smarty.const.ARTICLES_PKG_URL}">{tr}Show More{/tr}</a>		
	{/bitmodule}
{/if}
{/strip}
