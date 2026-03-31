eds1_8(function ($) {
	var $edgAdminSettings = $('#edgAdminSettings'),
		$settingsGroupGalleries = $('.settingsGroup.galleries', $edgAdminSettings),

		addId = function (idsString, newId) {
			if (idsString.indexOf(',' + newId + ',') != -1)
				return idsString;

			if (idsString == '')
				idsString = ',';

			return idsString + newId + ',';
		},

		removeId = function (idsString, theId) {
			idsString = idsString.replace(',' + theId + ',', ',');

			if (idsString == ',')
				idsString = '';

			return idsString;
		};

	$('.itemSelection_selectedIds', $settingsGroupGalleries).on('refreshIds', function () {
		var $selectedGalleries = $('.itemSelectionContainer .itemSelection_selectedItemsContainer .itemSelection_selectedItemsList > li', $settingsGroupGalleries),
			selectedGalleries = '';

		if ($selectedGalleries.length > 0) {
			selectedGalleries = ',';

			$selectedGalleries.each(function () {
				selectedGalleries += $(this).data('itemId') + ',';
			});
		}

		$('.itemSelectionContainer .itemSelection_selectedIds', $settingsGroupGalleries).val(selectedGalleries);
	});

	$edgAdminSettings.on('click', '.itemSelectionContainer .itemSelection_itemList .itemSelection_item', function () {
		var $clicked = $(this),
			$itemSelectionContainer =  $clicked.parents('.itemSelectionContainer'),
			$selectedIds = $('.itemSelection_selectedIds', $itemSelectionContainer),
			$selectedItemsContainer = $('.itemSelection_selectedItemsContainer', $itemSelectionContainer),
			$selectedItemsList = $('.itemSelection_selectedItemsList', $selectedItemsContainer),
			$li,

			manipulatingGalleries = $itemSelectionContainer.parents('.settingsGroup.galleries').length != 0,
			itemId = $clicked.data('itemId');

		$selectedIds.val(addId($selectedIds.val(), itemId));

		$selectedItemsContainer.removeClass('noItemsSelected');

		if (!manipulatingGalleries)
			$settingsGroupGalleries.css('display', '');

		if ($('.item_' + itemId, $selectedItemsList).length != 0)
			return;

		if (!manipulatingGalleries)
			$('.refreshGalleryItemsTrigger', $settingsGroupGalleries).click();

		$li = $('<li data-item-id="' + itemId + '" class="item_' + itemId + '"><span class="name"></span><span class=\"remove\"></span></li>');
		$('> .name', $li).text($('.name', $clicked).text());

		$selectedItemsList.append($li);
	});

	$edgAdminSettings.on('click', '.itemSelectionContainer .itemSelection_selectedItemsContainer .itemSelection_selectedItemsList > li > .remove', function () {
		var $clicked = $(this),
			$item = $clicked.parent(),
			$itemSelectionContainer = $item.parents('.itemSelectionContainer'),
			$selectedIds = $('.itemSelection_selectedIds', $itemSelectionContainer),
			$selectedItemsContainer = $('.itemSelection_selectedItemsContainer', $itemSelectionContainer),

			manipulatingGalleries = $itemSelectionContainer.parents('.settingsGroup.galleries').length != 0,
			itemId = $item.data('itemId'),
			newIds;

		newIds = removeId($selectedIds.val(), itemId);
		$selectedIds.val(newIds);

		if (!manipulatingGalleries)
			$('.refreshGalleryItemsTrigger', $settingsGroupGalleries).click();

		if (newIds == '') {
			$selectedItemsContainer.addClass('noItemsSelected');

			if (!manipulatingGalleries)
				$settingsGroupGalleries.css('display', 'none');
		}

		$item
			.stop(true)
			.fadeOut(200, function () {
				$item.remove();
			})
	});

	/* Toggle buttons */

	$edgAdminSettings.on('click', '.onOffToggle', function () {
		var $this = $(this),
			$input = $('input', $this);

		$this.toggleClass('off');

		if ($input.length == 0)
			return;

		if ($this.hasClass('off'))
			$input[0].checked = false;
		else
			$input[0].checked = true;

		$this.trigger('changed');
	});

	$edgAdminSettings.on('changed', '.settingsGroup.edgDisplaySettings .onOffToggle', function () {
		var $this = $(this),
			$content = $('> div', $this.parents('.settingsGroup.edgDisplaySettings')),
			$sectionTogglesWrapper = $('.edsgg_admin_sectionTogglesWrapper'),

			switchColor = '',
			checked = true;

		$content.stop(true);

		if ($this.hasClass('off')) {
			$content.slideUp(200);
			checked = false;
		} else
			$content.slideDown(200);

		if ($this.hasClass('blue'))
			switchColor = 'blue';
		else if ($this.hasClass('yellow'))
			switchColor = 'yellow';
		else if ($this.hasClass('green'))
			switchColor = 'green';
		else if ($this.hasClass('red'))
			switchColor = 'red';

		$('.onOffToggle.' + switchColor, $sectionTogglesWrapper).toggleClass('off', !checked);
	});

	$edgAdminSettings.on('click', '.edsgg_admin_sectionTogglesWrapper .onOffToggle', function () {
		var $this = $(this),
			$internalSwitch,

			internalSwitchClass = '';
			checked = !$this.hasClass('off');

		if ($this.hasClass('blue'))
			internalSwitchClass = '.edgDisplaySettings.edgCategories .onOffToggle.blue';
		else if ($this.hasClass('yellow'))
			internalSwitchClass = '.edgDisplaySettings.edgGalleries .onOffToggle.yellow';
		else if ($this.hasClass('green'))
			internalSwitchClass = '.edgDisplaySettings.edgItems .onOffToggle.green';
		else if ($this.hasClass('red'))
			internalSwitchClass = '.edgDisplaySettings.edgItemDetails .onOffToggle.red';

		$internalSwitch = $(internalSwitchClass, $edgAdminSettings).toggleClass('off', !checked);
		$('input', $internalSwitch)[0].checked = checked;

		$internalSwitch.trigger('changed');
	});
});