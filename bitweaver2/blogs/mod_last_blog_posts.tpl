{* $Header$ *}

{if $gBitSystem->isPackageActive('blogs')}
	{bitmodule title="$moduleTitle" name="last_blog_posts"}
		<ul class="blogs">
			{section name=ix loop=$modLastBlogPosts}
				<li class="{cycle values="odd,even"}">
					<strong><a href="{$modLastBlogPosts[ix].display_url}">{$modLastBlogPosts[ix].title|strip_tags:false}</a></strong>
					<em>{$modLastBlogPosts[ix].created|bit_short_date}</em>
					<q cite="{$modLastBlogPosts[ix].post_url}">{displayname hash=$modLastBlogPosts[ix]}: {$modLastBlogPosts[ix].parsed|truncate:$maxPreviewLength|strip_tags:false}</q>
				</li>
			{sectionelse}
				<li></li>
			{/section}
		</ul>
		<a class="more" href="{$smarty.const.BLOGS_PKG_URL}">{tr}Show More{/tr}</a>
	{/bitmodule}
{/if}