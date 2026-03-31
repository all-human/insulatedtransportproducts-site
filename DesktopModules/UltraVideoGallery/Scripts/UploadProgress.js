/*
Upload Script for NeatUpload

Copyright (c) 2005 - 2012 by Pengcheng Rong (service@bizmodules.net) and Biz Modules Solutions(http://www.bizmodules.net)
All rights reserved.

To localize this script library, please make a copy and name it UploadProgress.(locale).js, for example, UploadProgress.de-DE.js, UploadProgress.it-IT.js.

Then you should modify these hard coded text strings in your duplicate:
********************************************************
Please wait while we upload your file.
Loading
Transfered
 of
 in total
time elapsed
remaining
Upload succeeded
Your video is being encoded, please wait
File upload have been cancelled
********************************************************

*/

var PLEASEWAIT = "Please wait while we upload your file";
var LOADING = "Loading";
var TRANSFERED = "Transfered";
var OF = "of";
var INTOTAL = "in total";
var TIMEELAPSED = "time elapsed";
var REMAINING = "remaining";
var SUCCEEDED = "Upload succeeded";
var CANCELLED = "File upload have been cancelled";


var InputControlId;
var CurrentPostBackId;
var ProgressContainer;
var IntervalHandler;
var IsUploading = false;
var CancelledBefore;

var MessageHeader =  "<table style='border:1px solid gray;' width='100%'><tr><td class=Normal>";
var MessageFooter = "</td></tr></table>";

function ShowUploadProgress(postBackId, inputId)
{
	InputControlId = inputId;
	CurrentPostBackId = postBackId;

	ProgressContainer = document.getElementById(InputControlId + '_progress');

	var inputFile = document.getElementById(InputControlId);
	if (inputFile.value != '')
	{
		if (CurrentPostBackId == "")
		{
			ProgressContainer.innerHTML = MessageHeader + PLEASEWAIT + MessageFooter;
			return;
		}
		else
		{
			ProgressContainer.innerHTML = MessageHeader + "<font class=SubSubHead>"+ LOADING +"...</font>";
		}
		if (CancelledBefore)
		{
			window.setTimeout("IntervalHandler = window.setInterval('refreshUploadProgress();', 1000);", 10000);
		}
		else
		{
			IntervalHandler = window.setInterval("refreshUploadProgress();", 1000);
		}
		CancelledBefore = false;
	}
}

function refreshUploadProgress()
{
    var _clientId = dnn.getVar("_clientId");
	var eventArgs = "refresh|" + CurrentPostBackId;
	dnn.xmlhttp.doCallBack(_clientId,eventArgs,GetUploadProgress_CallBack,this,GetUploadProgress_CallBackError,null,null,null,0);
}

function GetUploadProgress_CallBack(result, ctx)
{
	ShowFriendlyProgress(result);
}

function GetUploadProgress_CallBackError(result, ctx)
{
	//ProgressContainer.innerHTML = MessageHeader + result + MessageFooter;
	ClearRefreshInterval();
	return;
}

function ShowFriendlyProgress(result)
{
	var data = result.split("|");
	var status = data[0];
	var fractionComplete = data[1];
	var bytesRead = data[2];
	var bytesTotal = data[3];
	var bytesPerSec = data[4];
	var rejection = data[5];
	var failure = data[6];
	var timeRemaining = data[7];
	var timeElapsed = data[8];

	var strHtml="";
	var bolDoCancel = false;
	if (status == 'NormalInProgress' || status == 'ChunkedInProgress')
	{
		strHtml += "<table width='100%' border=0><tr><td class=SubSubHead>" + PLEASEWAIT + "</td></tr><tr><td class=Normal>"; 
		strHtml += TRANSFERED + " " + bytesRead + " " + OF + " " + bytesTotal + " " + INTOTAL+ ", " + bytesPerSec + ".</td></tr><tr><td>";
		strHtml += "<table width='100%' border=0><tr><td>";
		strHtml += GetPercentageHtml(fractionComplete);
		strHtml += "</td><td width=80>";


		if (CanCancel)
		{
			strHtml += "<input type=button class=CommandButton value=Cancel onclick='DoCancel()'>";
		}
		strHtml += "</td></tr></table></td></tr>";
		strHtml += "<tr><td class=Normal>" + TIMEELAPSED + ":" + timeElapsed + " &nbsp;&nbsp; " + REMAINING + ":" + timeRemaining + "</td></tr></table>";
	}
	else if (status == "Completed" || status == "ProcessingInProgress" || status == "ProcessingCompleted")
	{
		strHtml = "<font class=SubSubHead>" + SUCCEEDED + "</font>";
		ClearRefreshInterval();
	}
	else if (status == "Cancelled")
	{
		strHtml = CANCELLED;
		ClearRefreshInterval();
	}
	else if (status == "Rejected")
	{
		strHtml = rejection;
		ClearRefreshInterval();
		bolDoCancel = true;
	}
	else if (status == "Failed")
	{
		strHtml = failure;
		ClearRefreshInterval();
	}
	else
	{
		return;
	}

	ProgressContainer.innerHTML = MessageHeader + strHtml+ MessageFooter;

	if (bolDoCancel)
	{
		DoCancel();
	}
}

function ClearRefreshInterval()
{
	IsUploading = false;
	clearInterval(IntervalHandler);
}

function GetPercentageHtml(percentage)
{
    var _modulePath = dnn.getVar("_modulePath");

	var percentageHtml = "<div class='uvgprogress'>" 
	percentageHtml+="	<div style='width:"+ToPercentage(percentage)+";' />"
	percentageHtml+="</div>";

	return percentageHtml;
}

function ToPercentage(percentage)
{
	var percent = parseInt(percentage * 100);
	return percent + "%";
}

function CanCancel()
{
	try
	{
		if (window.stop || window.document.execCommand)
			return true;
		else
			return false;
	}
	catch (ex)
	{
		return false;
	}
}

function DoCancel() 
{
	if (document && document.stop)
		document.stop();
	else if (document && document && document.execCommand)
		document.execCommand('Stop');

	CancelledBefore = true;

	var _clientId = dnn.getVar("_clientId");
	var eventArgs = "cancel|" + CurrentPostBackId;
	dnn.xmlhttp.doCallBack(_clientId,eventArgs,null,this,null,null,null,null,0);
}
