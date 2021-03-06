{strip}
{if $gBitUser->hasPermission( 'p_users_view_icons_and_tools' )}
	<div class="pageactions tools">
		<ul>
			{if $gBitSystem->isPackageActive( 'rss' ) && $gBitSystem->isFeatureActive( 'rss_blogs' )}
				<li><a href="{$smarty.const.BLOGS_PKG_URL}blogs_rss.php?blog_id={$blogPosts[ix].blog_id}">{biticon ipackage="icons" iname="network-wireless" iexplain="rss feed"}</a></li>
			{/if}

			{* removing print icon, using css settings - xing
			<li><a title="{tr}print{/tr}" href="{$smarty.const.BLOGS_PKG_URL}print_blog_post.php?post_id={$blogPosts[ix].post_id}">{biticon ipackage="icons" iname="document-print" iexplain="print"}</a></li>*}
			<li><a title="{tr}email this post{/tr}" href="{$smarty.const.BLOGS_PKG_URL}send_post.php?post_id={$blogPosts[ix].post_id}">{biticon ipackage="icons" iname="mail-forward" iexplain="email this post"}</a></li>

			{if ($blogPosts[ix].ownsblog eq 'y') or ($gBitUser->mUserId and $blogPosts[ix].user_id eq $gBitUser->mUserId) or $gBitUser->hasPermission( 'p_blogs_admin' )}
				<li><a title="{tr}Remove{/tr}" href="{$smarty.const.BLOGS_PKG_URL}view.php?blog_id={$blogPosts[ix].blog_id}&amp;remove={$blogPosts[ix].post_id}">{biticon ipackage="icons" iname="edit-delete" iexplain="delete"}</a></li>
			{/if}

			{*====== NOTEPAD PACKAGE CHECK IS BROKEN
			{if $gBitUser->mUserId and $gBitSystem->isPackageActive( 'notepad' ) and $gBitUser->hasPermission( 'bit_p_notepad' )}
				<li><a title="{tr}Save to notepad{/tr}" href="{$smarty.const.BLOGS_PKG_URL}view.php?blog_id={$blogPosts[ix].blog_id}&amp;savenotepad={$blogPosts[ix].post_id}">{biticon ipackage="icons" iname="document-save" iexplain="save"}</a></li>
			{/if} *}
		</ul>
	</div><!-- end .tools -->
	<div class="clear"></div>
{/if}
{/strip}
