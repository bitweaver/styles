{* $Header: /cvsroot/bitweaver/_bit_styles/chemokine/Attic/my_bitweaver.tpl,v 1.2 2005/08/07 17:45:05 squareing Exp $ *}
{strip}

<div class="floaticon">{bithelp}</div>
<div class="display my">
<div class="header">
	<h1>{tr}My {$siteTitle}{/tr}</h1>
</div>

{include file="bitpackage:users/my_tiki_bar.tpl"}

<div class="body">

{*
<br /><br />

<div class="tabs">
	{if $mybitweaver_pages eq 'y'}
		<span id="tab1" class="tab tabActive">{tr}My Pages{/tr}</span>
	{/if}
	{if $mybitweaver_gals eq 'y'}
		<span id="tab2" class="tab">{tr}My galleries{/tr}</span>
	{/if}
	{if $mybitweaver_items eq 'y'}
		<span id="tab3" class="tab">{tr}My items{/tr}</span>
	{/if}
	{if $mybitweaver_msgs eq 'y'}
		<span id="tab4" class="tab">{tr}My messages{/tr}</span>
	{/if}
	{if $mybitweaver_tasks eq 'y'}
		<span id="tab5" class="tab">{tr}My tasks{/tr}</span>
	{/if}
	{if $mybitweaver_blogs eq 'y'}
		<span id="tab6" class="tab">{tr}My blogs{/tr}</span>
	{/if}
</div>

{if $mybitweaver_pages eq 'y'}
<div id="content1">
  <div class="admin box">
  <div class="boxtitle">
    <table width=100%>
    <tr>
      <td width=70%>{tr}User Pages{/tr}</td>
      <td><div class="button2"><a href="{$smarty.const.USERS_PKG_URL}my.php?by=creator" title="{tr}List pages where I am a creator{/tr}">{tr}by creator{/tr}</a></div></td>
      <td><div class="button2"><a href="{$smarty.const.USERS_PKG_URL}my.php?by=modificator" title="{tr}List pages where I am a modificator{/tr}">{tr}by modificator{/tr}</a></div></td>
    </tr>
    </table>
  </div>
  <div class="boxcontent">
  <table>
  {section name=ix loop=$user_pages}
  <tr><td>
  <a title="{$user_pages[ix].page_name}" href="{$smarty.const.WIKI_PKG_URL}index.php?page={$user_pages[ix].page_name|escape:"url"}">{$user_pages[ix].page_name|truncate:30:"(...)"}</a>
  </td><td align="right">
  (<a href="{$smarty.const.WIKI_PKG_URL}edit.php?page={$user_pages[ix].page_name|escape:"url"}">{tr}edit{/tr}</a>)
  </td></tr>
  {/section}
  </table>
  </div>
  </div>
</div>
{/if}

{if $mybitweaver_gals eq 'y'}
<div id="content2" class="content">
  <div class="admin box">
  <div class="boxtitle">{tr}User Galleries{/tr}</div>
  <div class="boxcontent">
  <table>
  {section name=ix loop=$user_galleries}
  <tr><td>
  <a href="{$smarty.const.IMAGEGALS_PKG_URL}browse_gallery.php?gallery_id={$user_galleries[ix].gallery_id}">{$user_galleries[ix].name}</a>
  </td><td align="right">
  <a href="{$smarty.const.IMAGEGALS_PKG_URL}index.php?editgal={$user_galleries[ix].gallery_id}">({tr}edit{/tr})</a>
  </td></tr>
  {/section}
  </table>
  </div>
  </div>
</div>
{/if}

{if $mybitweaver_items eq 'y'}
<div id="content3" class="content">
  <div class="admin box">
  <div class="boxtitle">{tr}Assigned items{/tr}</div>
  <div class="boxcontent">
  <table>
  {section name=ix loop=$user_items}
  <tr><td>
  <b>{$user_items[ix].value}</b> {tr}at tracker{/tr} {$user_items[ix].name}  
  </td><td align="right">
  <a href="view_tracker_item.php?tracker_id={$user_items[ix].tracker_id}&amp;item_id={$user_items[ix].item_id}">({tr}edit{/tr})</a>
  </td>
  </tr>
  {/section}
  </table>
  </div>
  </div>
</div>
{/if}

{if $mybitweaver_msgs eq 'y'}
<div id="content4" class="content">
  <div class="admin box">
  <div class="boxtitle">{tr}Unread Messages{/tr}</div>
  <table>
  {section name=ix loop=$msgs}
  <tr><td>
  <a href="messu-read.php?offset=0&amp;flag=&amp;flagval=&amp;find=&amp;sort_mode=date_desc&amp;priority=&amp;msg_id={$msgs[ix].msg_id}">{$msgs[ix].subject}</a>
  </td></tr>
  {/section}
  </table>
  </div>
</div>
{/if}

{if $mybitweaver_tasks eq 'y'}
<div id="content5" class="content">
  <div class="admin box">
  <div class="boxtitle">{tr}Tasks{/tr}</div>
  <table>
  {section name=ix loop=$tasks}
  <tr><td>
  <a href="{$smarty.const.USERS_PKG_URL}tasks.php?task_id={$tasks[ix].task_id}">{$tasks[ix].title}</a>
  </td></tr>
  {/section}
  </table>
  </div>
</div>
{/if}



{if $mybitweaver_blogs eq 'y'}
<div id="content6" class="content">
  <div class="admin box">
  <div class="boxtitle">{tr}User Blogs{/tr}</div>
  <table>
  {section name=ix loop=$user_blogs}
  <tr><td>
  <a href="{$smarty.const.BLOGS_PKG_URL}view.php?blog_id={$user_blogs[ix].blog_id}">{$user_blogs[ix].title}</a>
  </td><td align="right">
  (<a href="{$smarty.const.BLOGS_PKG_URL}edit.php?blog_id={$user_blogs[ix].blog_id}">{tr}edit{/tr}</a>)
  </td></tr>
  {/section}
  </table>
  </div>
</div>
{/if}
*}

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

</div> {* end .body *}
</div> {* end .my *}

{/strip}
