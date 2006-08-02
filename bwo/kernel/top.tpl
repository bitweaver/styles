<div id="bitlogo">
	<div id="bitlogin">
		{if $gBitUser->isRegistered()}
			{displayname} &bull; <a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
		{else}
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
				&nbsp;&bull; <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
			{/if}
		{/if}
	</div><!-- end #bitlogin -->
	{if $gBitSystem->isPackageActive( 'lucene' ) }
		<div id="bitsearch">
			{form method="get" ipackage=lucene ifile="index.php"}
				{biticon ipackage=liberty iname=find iexplain="Search"}
				<input type="text" name="search_phrase" size="15" accesskey="s" value="{tr}search{/tr}" onblur="if (this.value == '') {ldelim}this.value = '{tr}search{/tr}';{rdelim}" onfocus="if (this.value == '{tr}search{/tr}') {ldelim}this.value = '';{rdelim}" />
				<input type="submit" name="search" value="{tr}go{/tr}"/>
			{/form}
		</div><!-- end #bitsearch -->
	{elseif $gBitSystem->isPackageActive( 'search' ) }
		<div id="bitsearch">
			{form method="get" ipackage=search ifile="index.php"}
				<input type="hidden" name="where" value="pages" />
				{biticon ipackage=liberty iname=find iexplain="Search"}
				<input type="text" name="highlight" size="15" accesskey="s" value="{tr}search{/tr}" onblur="if (this.value == '') {ldelim}this.value = '{tr}search{/tr}';{rdelim}" onfocus="if (this.value == '{tr}search{/tr}') {ldelim}this.value = '';{rdelim}" />
				<input type="submit" name="search" value="{tr}go{/tr}"/>
			{/form}
		</div><!-- end #bitsearch -->
	{/if}
</div><!-- end #bittop -->
