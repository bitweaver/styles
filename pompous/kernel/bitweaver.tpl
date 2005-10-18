{strip}
{include file="bitpackage:kernel/header.tpl"}
<div id="bitbody">
	<div class="box download">
		<div class="top"></div>
		<div class="cen">
			<a href=""><img src="{$smarty.const.THEMES_PKG_URL}styles/pompous/images/b_download.png" title="Download bitweaver" alt="Download bitweaver" /><br />Download bitweaver<br /><small>v 1.0.4</small></a>
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
						<li><a href="">news</a></li>
						<li><a href="">wiki</a></li>
						<li><a href="">recent changes</a></li>
						<li><a href="">documentation</a>
							<ul>
								<li><a href="">install</a></li>
								<li><a href="">features</a></li>
								<li><a href="">packages</a></li>
							</ul>
						</li>
						<li>&nbsp;</li>
						<li><a href="">bitweaver demo</a></li>
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
		{include file=$mid}
	</div><!-- end #bitmain -->
</div><!-- end #bitbody -->
{include file="bitpackage:kernel/footer.tpl"}
{/strip}
