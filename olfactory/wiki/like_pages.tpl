{include file="bitpackage:wiki/page_tabs.tpl" pagetab=similar}

<div class="listing wiki">
	<div class="header">
		<h1>{tr}Pages like{/tr} <a href="{$pageInfo.display_url}">{$pageInfo.title}</a></h1>
	</div>

	<div class="body">
		<ul>
			{section name=back loop=$likepages}
				<li><a href="{$pageInfo.display_url}">{$likepages[back]}</a></li>
			{sectionelse}
				<li class="norecords">{tr}No pages found{/tr}</li>
			{/section}
		</ul>
	</div>
</div>