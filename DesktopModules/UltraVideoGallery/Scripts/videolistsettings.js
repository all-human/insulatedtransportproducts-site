
jQuery(document).ready(function () {
	var filtersoverall = jQuery(".filters input:first");
	var filters = jQuery(".filters input:gt(0)");
	filtersoverall.change(function () {
		if (this.checked)
			filters.attr("checked", true);
		else
			filters.attr("checked", false);
	});

	filters.change(function () {
		if (this.checked && filtersoverall[0].checked == false)
			filtersoverall[0].checked = true;
		else if (this.checked == false && filtersoverall[0].checked) {
			var checked = false;
			for (var i = 0; i < filters.length; i++) if (filters[i].checked) checked = true; if (!checked) filtersoverall[0].checked = false;
		}
	});
	filters.trigger("change");

});
