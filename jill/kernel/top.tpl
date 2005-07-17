<div id="bitlogo">
	{*
	<div id="bitlogin">
		{if $gbituser->isregistered()}
			{tr}logged in as {displayname}{/tr} &bull; <a href="{$gbitloc.users_pkg_url}logout.php">{tr}logout{/tr}</a>
		{else}
			{form ipackage="users" ifile="validate.php"}
				<input type="text" name="user" alt="user name" size="10" value="username" onfocus="this.value=''" />
				<input type="password" name="pass" alt="password" size="10" value="password" onfocus="this.value=''" />
				<input type="submit" name="login" value="{tr}login{/tr}" />
				{if $rememberme ne 'disabled'}
					<input type="hidden" name="rme" id="rme" value="on" />
				{/if}
				{if $gbitsystem->isfeatureactive( 'allowregister' )}
					<input type="submit" name="register" value="{tr}register{/tr}" />
				{/if}
			{/form}
		{/if}
	</div><!-- end #tiklogin -->
	*}

	{if $gBitSystem->isPackageActive( 'search' ) }
		<div id="bitsearch">
			{form method="get" ipackage=search ifile="index.php"}
				<input type="hidden" name="where" value="pages" />
				<input type="text" name="highlight" size="14" accesskey="s" value="{tr}search{/tr}" onfocus="this.value=''" />
				{*<select name="where">
					<option value="pages">{tr}Entire Site{/tr}</option>
					{if $gBitSystem->isFeatureActive( 'feature_wiki' )}
						<option value="wikis">{tr}Wiki Pages{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_directory' )}
						<option value="directory">{tr}Directory{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_galleries' )}
						<option value="galleries">{tr}Image Gals{/tr}</option>
						<option value="images">{tr}Images{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_file_galleries' )}
						<option value="files">{tr}Files{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_articles' )}
						<option value="articles">{tr}Articles{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_bit_forums' )}
						<option value="forums">{tr}Forums{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_blogs' )}
						<option value="blogs">{tr}Blogs{/tr}</option>
						<option value="posts">{tr}Blog Posts{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_faqs' )}
						<option value="faqs">{tr}FAQs{/tr}</option>
					{/if}
					{if $gBitSystem->isFeatureActive( 'feature_trackers' )}
						<option value="trackers">{tr}Tracker{/tr}</option>
					{/if}
				</select>*}

				<input type="submit" name="search" value="{tr}go{/tr}"/>
			{/form}
		</div><!-- end #bitsearch -->
	{/if}
</div><!-- end #bittop -->
