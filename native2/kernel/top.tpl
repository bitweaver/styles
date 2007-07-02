{strip}
<div id="bittop">
	<img src="/themes/styles/native2/images/logo.png" />
	{assign var=site_title value=$gBitSystem->getConfig('site_title')}
	{assign var=site_slogan value=$gBitSystem->getConfig('site_slogan')}
	{if !empty( $site_title ) || !empty($site_slogan)}	
		<h1>
			{if !empty( $site_title )}
				<strong>{$site_title}</strong>
			{/if}
			{if !empty( $site_slogan )}
				<em>{$site_slogan}</em>
			{/if}
		</h1>
	{/if}
</div>
{/strip}
