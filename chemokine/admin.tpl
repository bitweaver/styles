{if $package}
	<div class="floaticon">{biticon ipackage="$package" iname="pkg_`$package`" iexplain="$package"}</div>
{/if}
<div class="floaticon">{bithelp}</div>

<div class="admin $package}">
{if $package}
<div class="header">
	<h1>{tr}Configure {$package|capitalize}{/tr}</h1>
</div>
{else}
<div class="header">
	<h1>{tr}Administration{/tr}</h1>
</div>
{/if}

{* The rest determines which page to include using "page" GET parameter. Default: list-sections
Add a value in first check when you create a new admin page. *}
<div class="body">
{if $file }
{* SPIDERKILL FOR NOW include file="bitpackage:kernel/anchors.tpl" *}
{include file="bitpackage:$package/admin_`$file`.tpl"}
{else}
<table width="100%"><tr>
	<td width="25%" style="vertical-align:top;" rowspan="10">
		{box class="kernelmenu menu box" ipackage=kernel iname="pkg_kernel" iexplain="kernel" idiv="menuicon"}
			{include file=$kernelTemplate}
		{/box}
	</td>

	<td width="25%" style="vertical-align:top;">
		{box class="layoutmenu menu box" ipackage=kernel iname="pkg_layout" iexplain="layout and design" idiv="menuicon"}
			{include file="bitpackage:kernel/menu_layout_admin.tpl"}
		{/box}
	</td>

	{assign var="i" value="2"}
	{foreach key=key item=template from=$adminTemplates}
	{if $key ne "kernel"}
		<td width="25%" style="vertical-align:top;">
			{box class="`$key`menu menu box" ipackage=$key iname="pkg_`$key`" iexplain="$key" idiv="menuicon"}
				{include file="bitpackage:`$key`/menu_`$key`_admin.tpl"}
			{/box}
		</td>
		{if not ($i++ mod 3)}
			</tr><tr>
		{/if}
	{/if}
	{/foreach}
</tr></table>

{/if}



</div> {* end .body *}
</div> {* end .admin *}
