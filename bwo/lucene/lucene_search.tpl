{strip}
<div class="display clucene">
	<div class="header">
		<h1>{tr}Search{/tr}</h1>
	</div>

	<div class="body">

		<div id="sitesearch"></div>
		{formfeedback hash=$feedback}

		{form legend="Search" method="post"}
			<div class="row">
				{formlabel label="Search for" for="search_phrase"}
				{forminput}
					<input size="35" type="text" name="search_phrase" id="search_phrase" value="{$smarty.request.search_phrase}" />
					{if $searchIndices}&nbsp; {tr}in{/tr}&nbsp; {html_options name='search_index' selected=$smarty.request.search_index options=$searchIndices}{/if}
					{formhelp note=""}
				{/forminput}
			</div>

			<div class="row submit">
				<input type="submit" name="{tr}Search{/tr}" />
			</div>
		{/form}

		{if $gLucene->getResultCount()}
			<p>Number of results: {$gLucene->getResultCount()}</p>

			<ul class="data">
				{assign var=resultFile value=$gLucene->getField('result_template','bitpackage:lucene/lucene_result_inc.tpl')}
				{section loop=$gLucene->getResultCount() name=ix}
					{include file=$resultFile resultNum=$smarty.section.ix.index}
				{/section}
			</ul>
		{/if}
	</div><!-- end .body -->
</div><!-- end .liberty -->
{/strip}
