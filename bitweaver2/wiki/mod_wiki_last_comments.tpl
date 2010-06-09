{* $Header$ *}
{if $lastComments}
	{if $nonums eq 'y'}
		{eval var="{tr}Last `$module_rows` wiki comments{/tr}" assign="tpl_module_title"}
	{else}
		{eval var="{tr}Last wiki comments{/tr}" assign="tpl_module_title"}
	{/if}
	{bitmodule title="$moduleTitle" name="wiki_last_comments"}
		<ul class="wiki">
			{section name=ix loop=$lastComments}
				<li class="{cycle values="odd,even"}">
					{$lastComments[ix].display_link}
					{$lastComments[ix].root_content_title|escape|truncate:"128":""} | {$lastComments[ix].creator_user} | {$lastComments[ix].created|date_format:"%Y-%m-%d"}
				</li>
			{sectionelse}
				<li></li>
			{/section}
		</ul>
	{/bitmodule}
{/if}
