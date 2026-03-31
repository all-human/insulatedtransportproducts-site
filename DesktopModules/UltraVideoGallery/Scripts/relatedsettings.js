
jQuery(document).ready(function () {

	var individual = jQuery(".individual input");

	jQuery(individual[0]).change(function(){
		if(!this.checked && !individual[1].checked) individual[1].checked=true;
	});

	jQuery(individual[1]).change(function(){
		if(!this.checked && !individual[0].checked) individual[0].checked=true;
	});

	var series = jQuery(".series input");

	jQuery(series[1]).change(function(){
		if(this.checked && series[2].checked) series[2].checked=false;
	});

	jQuery(series[2]).change(function(){
		if(this.checked && series[1].checked) series[1].checked=false;
	});
});
