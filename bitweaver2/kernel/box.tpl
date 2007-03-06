{strip}
<div class="box{if $class}&nbsp;{$class}{/if}" {$atts}>

	{if $ipackage and $iname}
		{biticon ipackage=$ipackage iname=$iname iexplain=$iexplain iclass=$iclass iforce=icon} 
	{/if}

	{if $title}
		<h3>{$title}</h3>
	{/if}

	<div class="boxcontent">{$content}</div>

</div>
{/strip}
