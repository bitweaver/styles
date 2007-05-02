{if $smarty.const.ACTIVE_PACKAGE == 'lucene'}
	<link href="http://www.google.com/uds/css/gsearch.css" type="text/css" rel="stylesheet" /> 
	<script src="http://www.google.com/uds/api?file=uds.js&amp;v=0.1&amp;key=ABQIAAAA0BmDBEaYTqT7pKgJ3ciPwBQAnf7Q6cJ7Uw4F69m15WR7hBxZjBTUnpFJIdXPdr5vLEKzipzLf-mDLw" type="text/javascript"></script> 
	{literal}
	<script type="text/javascript"> 
	//<![CDATA[ 
	function OnLoad() { 
		// Create a search control 
		var searchControl = new GSearchControl(); 

		// Add bitweaver search 
		var siteSearch = new GwebSearch(); 
		siteSearch.setUserDefinedLabel("bitweaver.org"); 
		siteSearch.setUserDefinedClassSuffix("siteSearch"); 
		siteSearch.setSiteRestriction("bitweaver.org"); 
		searchControl.addSearcher(siteSearch);       
		// Add in a full set of searchers 
		//var localSearch = new GlocalSearch(); 
		//searchControl.addSearcher(localSearch); 
		//searchControl.addSearcher(new GwebSearch()); 
		//searchControl.addSearcher(new GvideoSearch()); 
		//searchControl.addSearcher(new GblogSearch()); 

		// Set the Local Search center point 
		//localSearch.setCenterPoint("New York, NY"); 

		// Tell the searcher to draw itself and tell it where to attach 
		searchControl.draw(document.getElementById("sitesearch")); 

		// Execute an inital search 
		//siteSearch.execute(""); 
	} 
	//]]> 
	</script>
	{/literal}
{/if}
