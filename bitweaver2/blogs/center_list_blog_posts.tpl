{* $Header$ *}
{if $blogPosts || $showEmpty}
<div class="floaticon">{bithelp}</div>

<div class="display">
	<div class="header">
		<h1>{tr}Recent Blog Posts{/tr}</h1>
	</div>

	<div class="body">
		{foreach from=$blogPosts item=aPost}
			{include file="bitpackage:blogs/blog_list_post.tpl"}
		{foreachelse}
			<div class="norecords">{tr}No records found{/tr}</div>
		{/foreach}
	</div><!-- end .body -->

	{pagination url="`$smarty.const.BLOGS_PKG_URL`index.php" user_id="`$gQueryUserId`"}

	{*minifind sort_mode=$sort_mode*}
</div>
{/if}
