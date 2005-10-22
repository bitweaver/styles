{strip}
{include file="bitpackage:kernel/header.tpl"}
<div id="bitbody">
	<div class="box download">
		<div class="top"></div>
		<div class="cen">
			<a href="http://sourceforge.net/project/showfiles.php?group_id=141358&release_id=336854">
				<img src="{$smarty.const.THEMES_PKG_URL}styles/pompous/images/b_download.png" title="Download bitweaver" alt="Download bitweaver" />
				<br />Download bitweaver<br /><small>v 1.0.4</small>
			</a>
		</div>
		<div class="bot"></div>
	</div>

	<div id="bitmain">
		{* friggin MSIE needs this here *}
		<div class="clear"></div>

		{if $smarty.const.ACTIVE_PACKAGE eq 'wiki'}
			<div class="box links">
				<div class="top"></div>
				<div class="cen">
					<img src="{$smarty.const.THEMES_PKG_URL}styles/pompous/images/b_links.png" title="Visit bitweaver site" alt="Visit bitweaver site" /><br />
					<ul class="menu">
						<!--li><a href="">news</a></li-->
						<!--li><a href="">recent changes</a></li-->
						<li><a href="/wiki/bitweaver+Documentation+Project">Documentation</a>
						<li>
							<ul>
								<li><a href="/wiki/InstallbitweaverDoc">Install</a></li>
								<li><a href="/wiki/bitweaverFeatures">Features</a></li>
								<li><a href="/wiki/index.php?structure_id=1">Technical Docs</a></li>
								<li><a href="/wiki/">Wiki</a></li>
							</ul>
						</li>
						<li>&nbsp;</li>
						<li><a href="http://demo.bitweaver.org">bitweaver Demo</a></li>
						<li><a href="/wiki/bitweaver_sites">Sites using bitweaver</a></li>
					</ul>
				</div>
				<div class="bot"></div>
			</div>
	{*
			<div class="box test">
				<div class="top"></div>
				<div class="cen">
					<a href=""><img src="{$smarty.const.THEMES_PKG_URL}styles/pompous/images/b_test.png" title="Sites that use bitweaver" alt="View the bitweaver demo" /><br />Test drive bitweaver</a>
				</div>
				<div class="bot"></div>
			</div>

			<div class="box sites">
				<div class="top"></div>
				<div class="cen">
					<a href=""><img src="{$smarty.const.THEMES_PKG_URL}styles/pompous/images/b_sites.png" title="bitweaver Demo" alt="bitweaver Demo" /><br />Sites using bitweaver</a>
				</div>
				<div class="bot"></div>
			</div>
	*}
		{/if}

		<a name="content"></a>
		{if $pageError}
			<div class="error">{$pageError}</div>
		{/if}
		<div class="body">
			<div class="content">
				<h1>bitweaver</h1>
				<p>
					bitweaver is an advanced, Open Source, Object Oriented, Content Management System (CMS) and Web Application Framework written in <a class="external" href='http://www.php.net'>PHP</a>.  We use <a class="external" href='http://smarty.php.net'>Smarty Templates</a> for easy template customisation and <a class="external" href='http://adodb.sourceforge.net/'>ADOdb</a> to support many databases including PostgreSQL, MySQL, FireBird and Oracle.
				</p>
				<p>
					Now that you know something about the background of bitweaver, we're sure you're itching to give it a shot. Give our <a class="external" href='http://demo.bitweaver.org'>demo site</a> a try or just go ahead and download and install it right away! Visit <a href="/wiki/bitweaverRequirements">bitweaverRequirements</a> for information on the server requirements.
				</p>

				<h1> Release 1.0.4</h1>
				<p>
					Various under the hood changes that might not be apparent to the regular user are included in this release. most notably our new <a href="/wiki/LibertyServices">LibertyServices</a>. Probably the last bugfix release before we have a larger release with lots of goodies coming your way.
				</p>
				<div class="clear"></div>
			</div> <!-- end .content -->
		</div> <!-- end .body -->		
	</div><!-- end #bitmain -->
</div><!-- end #bitbody -->
{include file="bitpackage:kernel/footer.tpl"}
{/strip}
