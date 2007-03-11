{form method="get" ipackage=search ifile="index.php"}
	<input id="fuser" name="highlight" size="20" type="text" accesskey="s" />
	{html_options options=$contentTypes name="content_type_guid" selected=$perms[user].level}
	<input type="submit" name="search" value="{tr}search{/tr}" />
{/form}