{strip}
<div id="bittop">
	<div id="bitlogin">
		{if $gBitUser->isRegistered()}
			{tr}Welcome{/tr}, <strong>{displayname hash=$gBitUser->mInfo}</strong>
			&nbsp;[<a href="{$smarty.const.USERS_PKG_URL}my.php">My bitweaver</a> &bull; {if $gBitUser->isAdmin()}<a href="{$smarty.const.KERNEL_PKG_URL}admin/">Admin</a> &bull; {/if}<a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>]
		{else}
			<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
			{if $gBitSystem->isFeatureActive( 'users_allow_register' )}
				| <a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a> 
			{/if}
		{/if}
	</div>

	<ul class="bitmenu">
		<li class="left"><!-- --></li>
		<li><a class="parent" href="/articles/45" title="Get the latest release!">Downloads</a>
			<ul>
				<li><a href="/wiki/bitweaverRequirements" title="What you need to run bitweaver">Requirements</a></li>
				<li><a href="/wiki/InstallbitweaverDoc" title="Installation Help">Installation</a></li>
				<li><a href="/wiki/bitweaver+R1+to+R2+Upgrade" title="Upgrading to R2 - Read this First!">R1 to R2 Upgrade</a></li>
				<li><a href="/wiki/Add+On+Features" title="Optional packages not included with the release">Add On Features</a></li>
			</ul>
		</li>
		<li><a class="parent" href="/wiki/documentation" title="All Documentation">Docs</a>
			<ul>
				<li><a href="/wiki/Bitweaver+Overview" title="Learn about bitweaver">Overview</a></li>
				<li><a href="/wiki/Bitweaver+Features" title="What is included in the R2 release">Features</a></li>
				<li><a href="/wiki/bitweaverFAQ" title="Frequently asked, and frequently answered">FAQs</a></li>
				<li><a href="/index.php?structure_id=39" title="Where we are headed">Roadmap</a></li>
				<li><a href="/wiki/developer+center#Tutorials" title="Expand your horizons">Developer Tutorials</a></li>
			</ul>
		</li>
		<li class="logo"><a href="{$smarty.const.BIT_ROOT_URL}"></a>
		</li>
		<li><a class="parent" href="" title="Live Demo Coming Soon">Demo</a>
			<ul>
				<li><a href="/wiki/Screenshots" title="Pretty pictures">Screenshots</a></li>
				<li><a href="/wiki/bitweaver_sites" title="We're part of the reality community">Sites using bitweaver</a></li>
			</ul>
		</li>
		<li><a class="parent" href="/wiki/developer+center" title="Get involved!">Community</a>
			<ul>
				<li><a href="/articles/" title="The latest on development">News</a></li>
				<li><a href="/wiki/MailingLists" title="Notifications">Mailing Lists</a></li>
				<li><a href="/wiki/ConnectingToIrc" title="Where the development action is">Chat on IRC</a></li>
				<li><a href="/wiki/support" title="Get Help!">Support</a></li>
				<li><a href="/blogs/" title="Musings from the front lines">Development Blogs</a></li>
				<li><a href="/forums/" title="Talk amongst yourselves">Forums</a></li>
			</ul>
		</li>
		<li class="right"><!-- --></li>
	</ul>
</div>
{/strip}
