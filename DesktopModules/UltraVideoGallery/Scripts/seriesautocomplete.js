var callbackseries;
function completeSeries(sender, callback)
{
	var callbackId = dnn.getVar("meClientId");
	if (!callbackId)
	{
		return;
	}
	callbackseries = callback;
	dnn.xmlhttp.doCallBack(callbackId,"SEARCHSERIES:"+sender.term,completeSeries_Callback,this,null,null,false,null,0);
}
function completeSeries_Callback(result, ctx)
{
    var series = jQuery.parseJSON(result);
	callbackseries (series);
}