{strip}
<div id="bittopbar">
	<a accesskey="h" href="{$smarty.const.BIT_ROOT_URL}">Home</a>
	<a href="{$smarty.const.BIT_ROOT_URL}articles/45">Download</a>
	<a href="{$smarty.const.BIT_ROOT_URL}wiki/documentation">Documentation</a>
	<a href="{$smarty.const.BIT_ROOT_URL}wiki/support">Support</a>
	<a href="{$smarty.const.BIT_ROOT_URL}wiki/developer+center">Community</a>
	<a href="http://www.opensourcecms.com/index.php?option=com_content&amp;task=view&amp;id=2155&amp;PHPSESSID=c7c8f321cab4f67b9dca147abcee97b3">Demo</a>
	{if $gBitUser->isAdmin()}
		<a href="{$smarty.const.BIT_ROOT_URL}kernel/admin/">Admin</a>
	{/if}
</div>
{/strip}
