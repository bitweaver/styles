<div id="bitlogo">
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
