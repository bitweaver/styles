{strip}
<div id="bittop">
	<div id="bitlogin">
		{if $gBitUser->isRegistered()}
			{tr}Welcome{/tr}, <strong>{displayname hash=$gBitUser->mInfo}</strong>
			&nbsp;[<a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>]
		{else}
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
				| <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a> 
			{/if}
		{/if}
	</div>

	<ul class="bitmenu">
		<li class="left"><!-- --></li>
		<li><a class="parent" href="/articles/45">Downloads</a>
			<ul>
				<li><a href="/wiki/bitweaverRequirements">Requirements</a></li>
				<li><a href="/wiki/InstallbitweaverDoc">Installation</a></li>
				<li><a href="/wiki/bitweaver+R1+to+R2+Upgrade">R1 to R2 Upgrade</a></li>
			</ul>
		</li>
		<li><a class="parent" href="/wiki/documentation">Docs</a>
			<ul>
				<li><a href="/wiki/Bitweaver+Overview">Overview</a></li>
				<li><a href="/wiki/Bitweaver+Features">Features</a></li>
				<li><a href="/wiki/bitweaverFAQ">FAQs</a></li>
				<li><a href="/index.php?structure_id=39">Roadmap</a></li>
				<li><a href="/wiki/developer+center#Tutorials">Developer Tutorials</a></li>
			</ul>
		</li>
		<li class="logo"><a href="/"></a>
{*
			<ul>
				<li><a href="">Green</a></li>
				<li><a href="">Pink</a></li>
			</ul>
*}
		</li>
		<li><a class="parent" href="">Demo</a>
			<ul>
				<li><a href="/wiki/Screenshots">Screenshots</a></li>
				<li><a href="/wiki/bitweaver_sites">Sites using bitweaver</a></li>
			</ul>
		</li>
		<li><a class="parent" href="/wiki/developer+center">Community</a>
			<ul>
				<li><a href="/articles/">News</a></li>
				<li><a href="/wiki/MailingLists">Mailing Lists</a></li>
				<li><a href="/wiki/ConnectingToIrc">Chat on IRC</a></li>
				<li><a href="/wiki/support">Support</a></li>
				<li><a href="/blogs/">Development Blogs</a></li>
				<li><a href="/forums/">Forums</a></li>
			</ul>
		</li>
		<li class="right"><!-- --></li>
	</ul>
</div>
{/strip}
