{* $Header: /cvsroot/bitweaver/_bit_styles/bitweaver2/bitboards/Attic/mod_recent_posts.tpl,v 1.1 2007/03/30 02:04:59 laetzer Exp $ *}
{strip}
{if $gBitSystem->isPackageActive('bitboards') && {$modLastBoardPosts}
	{bitmodule title="$moduleTitle" name="last_board_posts"}
		<ul class="boards">
			{section name=ix loop=$modLastBoardPosts}
				<li class="{cycle values="odd,even"}">
					<strong><a href="{$modLastBoardPosts[ix].display_url}">{$modLastBoardPosts[ix].title|default:"Comment"}</a></strong>
					<em>{$modLastBoardPosts[ix].created|bit_short_date}</em>
					<var>{displayname hash=$modLastBoardPosts[ix]}</var>
				</li>
			{sectionelse}
				<li></li>
			{/section}
		</ul>
		<a class="more" href="{$smarty.const.BITBOARDS_PKG_URL}{if $modRecentPostsBoardId}index.php?b={$modRecentPostsBoardId}{/if}">{tr}Show More{/tr}</a>
	{/bitmodule}
{/if}
{/strip}
