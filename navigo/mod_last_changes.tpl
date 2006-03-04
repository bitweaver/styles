{* $Header: /cvsroot/bitweaver/_bit_styles/navigo/Attic/mod_last_changes.tpl,v 1.1.2.1 2006/03/04 06:41:38 wolff_borg Exp $ *}
{strip}
{if $modLastContent}
	{bitmodule title="$moduleTitle" name="last_changes"}
		<ol>
			{section name=ix loop=$modLastContent}
				<li>
					{$modLastContent[ix].display_link}
					{if $showDate}
						<br/><span class="date">{$modLastContent[ix].last_modified|bit_long_date}</span>
					{/if}
				</li>
			{sectionelse}
				<li></li>
			{/section}
		</ol>
		<a href="{$smarty.const.LIBERTY_PKG_URL}list_content.php?user_id={$gQueryUserId}&amp;sort_mode=last_modified_desc{if $contentType}&content_type_guid={$contentType}{/if}">{tr}View more{/tr}&hellip;</a>
	{/bitmodule}
{/if}
{/strip}
