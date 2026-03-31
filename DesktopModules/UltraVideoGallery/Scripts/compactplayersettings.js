var callbackfunction;
function completeVideo(sender, callback)
{
	var callbackId = dnn.getVar("meClientId");
	if (!callbackId)
	{
		return;
	}
	callbackfunction = callback;
	dnn.xmlhttp.doCallBack(callbackId,sender.term,completeVideo_Callback,this,null,null,false,null,0);
}
function completeVideo_Callback(result, ctx)
{
    var tags = jQuery.parseJSON(result);
	callbackfunction (tags);
}