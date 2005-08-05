{* $Header: /cvsroot/bitweaver/_bit_styles/olfactory/articles/list_articles.tpl,v 1.1.1.1.2.1 2005/08/05 23:00:33 squareing Exp $ *}
<div class="floaticon">{bithelp}</div>

{strip}
<div class="listing articles">
	<div class="header">
		<h1>{tr}Articles{/tr}</h1>
	</div>

	<div class="body">
		<div class="pageactions sort">
			<ul>
				<li>{biticon ipackage=liberty iname=sort iexplain="sort by"}</li>
				{if $art_list_title eq 'y'}
					<li>{smartlink ititle='Title' isort='title' offset=$offset type=$find_type topic=$find_topic}</li>
				{/if}
				{if $art_list_author eq 'y'}
					<li>{smartlink ititle='Author' isort='author_name' offset=$offset type=$find_type topic=$find_topic}</li>
				{/if}
				{if $art_list_date eq 'y'}
					<li>{smartlink ititle='Publish Date' isort='publish_date' offset=$offset type=$find_type topic=$find_topic}</li>
				{/if}
				{if $art_list_expire eq 'y'}
					<li>{smartlink ititle='Expire Date' isort='expire_date' offset=$offset type=$find_type topic=$find_topic}</li>
				{/if}
			</ul>
		</div>

		<div class="clear"></div>
		<table class="data">
			<caption>{tr}Articles Listing{/tr}</caption>
			<tr>
				{if $art_list_img eq 'y'}
					<th>{tr}Image{/tr}</th>
				{/if}
				{if $art_list_type eq 'y'}
					<th>{smartlink ititle='Type' isort='type_name' offset=$offset type=$find_type topic=$find_topic}</th>
				{/if}
				{if $art_list_topic eq 'y'}
					<th>{smartlink ititle='Topic' isort='topic_name' offset=$offset type=$find_type topic=$find_topic}</th>
				{/if}
				{if $art_list_reads eq 'y'}
					<th>{smartlink ititle='Reads' isort='hits' offset=$offset type=$find_type topic=$find_topic}</th>
				{/if}
				<th>{tr}Action{/tr}</th>
			</tr>
			{cycle values="even,odd" print=false}
			{section name=changes loop=$listpages}
				<tr class="{cycle advance=false}">
					{if $art_list_img eq 'y'}
						<td rowspan="2">
							<img src="{$listpages[changes].img_url}"/>
						</td>
					{/if}

					<td colspan="10">
						{if $art_list_title eq 'y'}
							{if $gBitUser->hasPermission( 'bit_p_read_article' )}
								<a href="{$smarty.const.ARTICLES_PKG_URL}read.php?article_id={$listpages[changes].article_id}">
							{/if}
							{$listpages[changes].title}
							{if $gBitUser->hasPermission( 'bit_p_read_article' )}
								</a>
							{/if}
						{/if}
						{if $art_list_author eq 'y'}
							&nbsp;&nbsp;&nbsp;
							{tr}created by{/tr} {displayname user=$listpages[changes].author_name}
						{/if}
						{if $art_list_date eq 'y' or $art_list_expire eq 'y'}<br />{/if}
						{if $art_list_date eq 'y'}
							{$listpages[changes].publish_date|bit_short_datetime}
						{/if}
						{if $art_list_expire eq 'y'}
							&nbsp;&nbsp;&nbsp;--&gt;&nbsp;&nbsp;&nbsp;
							{$listpages[changes].expire_date|bit_short_datetime}
						{/if}
					</td>
				</tr>

				<tr class="{cycle}">
					{if $art_list_type eq 'y'}
						<td>{tr}{$listpages[changes].type_name}{/tr}</td>
					{/if}
					{if $art_list_topic eq 'y'}
						<td>{$listpages[changes].topic_name}</td>
					{/if}
					{if $art_list_reads eq 'y'}
						<td style="text-align:right;">{$listpages[changes].hits}</td>
					{/if}
					{if $bit_p_edit_article eq 'y' or ($listpages[changes].author eq $user and $listpages[changes].creator_edit eq 'y')}
						<a title="{tr}Edit{/tr}" href="{$smarty.const.ARTICLES_PKG_URL}edit.php?article_id={$listpages[changes].article_id}"><img class="icon" src="{$smarty.const.KERNEL_PKG_URL}icons/edit.gif" alt="{tr}Edit{/tr}" /></a>
					{/if}
					{if $bit_p_remove_article eq 'y'}
						<a title="{tr}Remove{/tr}" href="{$smarty.const.ARTICLES_PKG_URL}list.php?offset={$offset}&amp;sort_mode={$sort_mode}&amp;remove={$listpages[changes].article_id}"><img class="icon" src="{$smarty.const.KERNEL_PKG_URL}icons/delete.gif" alt="{tr}Remove{/tr}" /></a>
					{/if}
				</tr>
			{sectionelse}
				<tr class="norecords">
					<td colspan="9">
						{tr}No records found{/tr}
					</td>
				</tr>
			{/section}
		</table>

		{include file="bitpackage:kernel/pagination.tpl"}
	</div><!-- end .body -->
</div><!-- end .article -->
{/strip}
