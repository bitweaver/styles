{strip}
<div class="floaticon">{bithelp}</div>
<div class="display my">
	<div class="header">
		<h1>{tr}My {$siteTitle}{/tr}</h1>
	</div>

	<div class="body">
		<table width="100%">
			<tr>
				{assign var="i" value="1"}
				{foreach key=key item=menu from=$appMenu}
					{if $menu.title}
						{if $menu.template}
						<td width="25%" valign="top">
							{box class="`$key`menu menu box" ipackage="$key" iname="pkg_`$key`" iexplain="$key" idiv="menuicon"}
								{include file=$menu.template}
							{/box}
						</td>
							{if not ($i++ mod 4)}
								</tr><tr>
							{/if}
						{/if}
					{/if}
				{/foreach}
			</tr>
		</table>
	</div><!-- end .body -->
</div><!-- end .my -->
{/strip}
