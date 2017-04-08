function showtab(m,n,count)
{
	var strPic1;
	var strPic2;
	var tdcolor;
	if (m==1) 
	{
	    strPic1='url(/images/doton.gif)';
		strPic2='url(/images/dotoff.gif)';
		for(var i=1;i<=count;i++)
		{
		    if (i==n)
			{			
			    getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#000000';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
			    getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#000000';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==2) 
	{
		strPic1='url(/images/bgon01.gif)';
		strPic2='url(/images/bgoff01.gif)';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#000000';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#666666';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==3) 
	{
		strPic1='url(../images/bgon01.gif)';
		strPic2='url(../images/bgoff01.gif)';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#ff0000';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#333333';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==4) 
	{
		strPic1='url(../images/bgon02.gif)';
		strPic2='url(../images/bgoff02.gif)';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#000000';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#2e2e2e';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==5) 
	{
		tdcolor='#FF6600';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject('bg_'+m+'_'+i).style.backgroundColor=tdcolor;
				getObject('td_'+m+'_'+i).style.color='#ffffff';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject('bg_'+m+'_'+i).style.backgroundColor='#ffffff';
				getObject('td_'+m+'_'+i).style.color='#2e2e2e';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==6) 
	{
		strPic1='url(images/point01.gif)';
		strPic2='url(images/point02.gif)';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#FFFFFF';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#2e2e2e';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
	if (m==7) 
	{
		strPic1='url(images/point01.gif)';
		strPic2='url(images/point02.gif)';
		for(var i=1;i<=count;i++)
		{
			if (i==n)
			{			
				getObject(m+'_'+i).style.background=strPic1;
				getObject('td_'+m+'_'+i).style.color='#FFFFFF';
				getObject('tab_'+m+'_'+i).style.display='';
			}
			else 
			{
				getObject(m+'_'+i).style.background=strPic2;
				getObject('td_'+m+'_'+i).style.color='#2e2e2e';
				getObject('tab_'+m+'_'+i).style.display='none';
			}
		}
	}
}
function getObject(objectId) {
    if(document.getElementById && document.getElementById(objectId)) {
	// W3C DOM
	return document.getElementById(objectId);
    } else if (document.all && document.all(objectId)) {
	// MSIE 4 DOM
	return document.all(objectId);
    } else if (document.layers && document.layers[objectId]) {
	// NN 4 DOM.. note: this won't find nested layers
	return document.layers[objectId];
    } else {
	return false;
    }
} // getObject
//-->