//alert('shopping-list.js');
(function () {
    "use strict";
    var active_list_div,
        inactive_list_div,
        active_list_arr,
        inactive_list_arr,
        //
        InitUI,
        //
        createListItem,
        loadList,
        //
        addItem,
        updateItem,
        deleteItem,
        //
        resortActiveList,
        resortInactiveList,
        //
        showAddItemView,
        removeAddItemView,
        //
        showEditItemView,
        removeEditItemView,
        //
        showEditListView,
        hideEditListView,
        //
        deleteSingleItem,
        deleteCheckedItems, //replaced by deletion of the inactive list
        deleteEntireShoppingList,
        deleteInactiveShoppingList,
        cancelDeletion,
        confirmDeletion,
        //
        removeFieldControlEventHandling,
        listItemAddTopBorder,
        listItemRemoveTopBorder,
        //
        DataAccess_loadList,
        DataAccess_saveList,
        DataAccess_deleteList,
        //
        handleEmptyList
        ;
    //
    //
    // 
    active_list_div = $('#active_shopping_list');
    inactive_list_div = $('#inactive_shopping_list');
    active_list_arr = [{name: 'apples'}, {name: 'oranges'}, {name: 'milk'}, {name: 'apple juice'}, {name: 'bread'}];
    inactive_list_arr = [{name: 'fish  nuggets'}];
    //
    //
    //
    DataAccess_loadList = function () {
        function readSucces(dataObj) {
            inactive_list_arr = dataObj.checked;
            active_list_arr = dataObj.unchecked;

            InitUI();
        }

        ShoppingListItem_Table.ReadAll(readSucces);
    }

    //
    //
    //
    DataAccess_saveList = function (arr, isChecked) {
        ShoppingListItem_Table.ReplaceSet(arr, isChecked);
    }

    //
    //
    //
    DataAccess_deleteList = function () {
        ShoppingListItem_Table.ReplaceAll(null, null);
    }


    //
    //
    //
    createListItem = function (num, elm, typ) {
        var markup;
        //
        markup = '<li id="' + typ + num + '" class="list-item">' +
                    '<div class="list-item-checkbox"></div>' +
                    '<div class="list-item-activator"></div>' +
                    '<span>' + elm.name + '</span>' +
                    '<div class="list-item-dragger"></div>' +
                    '<div class="list-item-editor"></div>' +
                    '<div class="list-item-delete">Delete</div>' +
                '</li>';
        //
        return markup;
    };
    loadList = function (tgt, lst, typ) {
        var i, markup;
        //
        markup = '<ul id="' + typ + '_list">';
        for (i = 0; i < lst.length; i++) {
            markup += createListItem(i, lst[i], typ);
        }
        markup += '</ul>';
        //
        tgt.append(markup);
    };
    //
    //
    //
    addItem = function (txt) {
        var item_count, new_item, list_tgt;
        //
        if (txt.length > 0) {
            list_tgt = $('#active_shopping_list ul');
            item_count = $('#active_shopping_list ul li').length;
            new_item = createListItem(item_count, {name: txt}, 'active');
            list_tgt.prepend(new_item);
            $('#active_shopping_list ul #active' + item_count + ' .list-item-checkbox').bind('touchend', function () {
                if ($(this).parent().parent().parent().attr('id') === 'active_shopping_list') {
                    $('#inactive_list').prepend($(this).parent());
                } else {
                    $('#active_list').append($(this).parent());
                }
                resortActiveList();
                resortInactiveList();
            });
            //
            $('#active_shopping_list ul #active' + item_count + ' .list-item-activator').bind('touchend', function () {
                if ($(this).hasClass('list-item-activator-active')) {
                    $(this).siblings('.list-item-delete').hide();
                } else {
                    $(this).siblings('.list-item-delete').show();
                }
                $(this).toggleClass('list-item-activator-active');
            });
            $('#active_shopping_list ul #active' + item_count + ' .list-item-editor').bind('touchend', function () {
                showEditItemView($(this).parent().attr('id'));
            });
            $('#active_shopping_list ul #active' + item_count + ' .list-item-delete').bind('touchend', function () {
                deleteSingleItem($(this).parent().attr('id'));
            });
            //
            resortActiveList();
            resortInactiveList();
        }
        //
        removeAddItemView();
    };
    updateItem = function (obj, txt) {
        //$('#' + obj).contents().filter(function() { return this.nodeType == 3; }).replaceWith(txt);
        $('#' + obj + ' span').text(txt);
        removeEditItemView();
    };
    deleteItem = function (obj) {
        obj.empty().remove();
        // explore garbage collection
    };
    //
    //
    //
    //
    // DB Updates
    resortActiveList = function () {
        var i, nm, arr;
        arr = $('#active_list li span');
        active_list_arr = [];
        for (i = 0; i < arr.length; i++) {
            nm = 'active' + i;
            active_list_arr[i] = {name: $(arr[i]).text()};
            $(arr[i]).parent().attr('id', nm);
            //console.log($(arr[i]).parent().attr('id'));
        }
        //console.log('-----------------------------------');
        //console.log('--> active list:');
        for (i = 0; i < active_list_arr.length; i++) {
            console.log(active_list_arr[i].name);
        }
        DataAccess_saveList(active_list_arr, 0);   
        handleEmptyList(active_list_arr, inactive_list_arr);
    };

    resortInactiveList = function () {
        var i, nm, arr;
        arr = $('#inactive_list li span');
        inactive_list_arr = [];
        for (i = 0; i < arr.length; i++) {
            nm = 'inactive' + i;
            inactive_list_arr[i] = {name: $(arr[i]).text()};
            $(arr[i]).parent().attr('id', nm);
            //console.log($(arr[i]).parent().attr('id'));
        }
        //console.log('----- | -----');
        //console.log('--> inactive list:');
        for (i = 0; i < inactive_list_arr.length; i++) {
            console.log(inactive_list_arr[i].name);
        }
        //console.log('-----------------------------------');
        DataAccess_saveList(inactive_list_arr,1); 
        //
        handleEmptyList(active_list_arr, inactive_list_arr);
    };
    //
    //
    //
    showAddItemView = function () {
        removeFieldControlEventHandling();
        $('.shoppingList .shoppingListAddEditViewTitle').text('ADD ITEM');
        $('#shopping_list_addedit_view').show();
        if (window.app.props.os_version >= 7) {
            $('#shopping_list_addedit_view').css({'top': '105px'});
        } else{
            $('#shopping_list_addedit_view').css({'top': '85px'});
        }
        $('#shopping_list_addedit_field').focus();
        $('#shopping_list_add_aff').css({'visibility': 'hidden'});
        $('#shopping_list_edit_aff').css({'visibility': 'hidden'});
        //
        $('#shopping_list_done_aff').bind('touchend', function (e) {
            e.stopPropagation();
            addItem($('#shopping_list_addedit_field').val());
            return false;
        });
        $('#shopping_list_cancel_aff').bind('touchend', function (e) {
            e.stopPropagation();
            removeAddItemView();
            return false;
        });
        $('#shopping_list_addedit_field').bind('keypress', function (e) {
            if (e.keyCode === 13) {
                addItem($('#shopping_list_addedit_field').val());
            }
        });
    };
    removeAddItemView = function () {
        removeFieldControlEventHandling();
        // $('#shopping_list_done_aff').unbind('touchend');
        // $('#shopping_list_cancel_aff').unbind('touchend');
        // $('#shopping_list_addedit_field').unbind('keypress');
        $('#shopping_list_addedit_field').blur();
        $('#shopping_list_addedit_view').hide();
        $('#shopping_list_addedit_field').val('');
        $('#shopping_list_add_aff').css({'visibility': 'visible'});
        $('#shopping_list_edit_aff').css({'visibility': 'visible'});
    };
    //
    //
    //
    showEditItemView = function (tgt) {
        removeFieldControlEventHandling();
        $('.shoppingList .shoppingListAddEditViewTitle').text('EDIT ITEM');
        $('#shopping_list_addedit_view').show();
        if (window.app.props.os_version >= 7) {
            $('#shopping_list_addedit_view').css({'top': '65px'});
        } else{
            $('#shopping_list_addedit_view').css({'top': '45px'});
        }
        $('#shopping_list_addedit_field').focus();
        $('#shopping_list_edit_cancel_aff').css({'visibility': 'hidden'});
        $('#shopping_list_edit_done_aff').css({'visibility': 'hidden'});
        $('#shopping_list_addedit_field').val('');
        $('#shopping_list_addedit_field').val($('#' + tgt + ' span').text());
        //
        $('#shopping_list_done_aff').bind('touchend', function (e) {
            //alert('DONE');
            e.stopPropagation();
            updateItem(tgt, $('#shopping_list_addedit_field').val());
            return false;
        });
        $('#shopping_list_cancel_aff').bind('touchend', function (e) {
            //alert('CANCEL');
            e.stopPropagation();
            removeEditItemView();
            return false;
        });
        $('#shopping_list_addedit_field').bind('keypress', function (e) {
            if (e.keyCode === 13) {
                updateItem(tgt, $('#shopping_list_addedit_field').val());
            }
        });
    };
    removeEditItemView = function () {
        removeFieldControlEventHandling();
        // $('#shopping_list_done_aff').unbind('touchend');
        // $('#shopping_list_cancel_aff').unbind('touchend');
        // $('#shopping_list_addedit_field').unbind('keypress');
        $('#shopping_list_addedit_field').blur();
        $('#shopping_list_addedit_view').hide();
        $('#shopping_list_addedit_field').val('');
        $('#shopping_list_addedit_view').css({'top': '85px'});
        $('#shopping_list_edit_cancel_aff').css({'visibility': 'visible'});
        $('#shopping_list_edit_done_aff').css({'visibility': 'visible'});
    };
    //
    //
    //
    showEditListView = function () {
        //$('.shoppingList .shoppingListEditListViewTitle').text('EDIT SHOPPING LIST');
        var viewport_height, foot_offset;
        viewport_height = $('#bg_image').height();
        if (viewport_height === 460) {
            foot_offset = '370px';
        } else {
            foot_offset = '460px';
        }
        $('#shopping_list_edit_bar').show();
        $('#top_ttl').hide();
        TweenMax.to($('.both-lists'), 0.3, {'margin-top': '45px'});
        $('.shoppingList .list-item-checkbox').hide();
        $('.shoppingList .list-item-dragger').hide();
        $('.shoppingList .list-item-activator').show();
        $('.shoppingList .list-item-editor').show();
        // $('#shopping_list_edit_view_footer').show();
        $('footer').show();
        $('footer #standard_footer').hide();
        $('footer #shopping_list_edit_view_footer').show();
        //
        $('.both-lists').css({'height': foot_offset, 'overflow':'overlay'});
    };
    hideEditListView = function () {
        $('#shopping_list_edit_bar').hide();
        $('#top_ttl').show();
        TweenMax.to($('.both-lists'), 0.3, {'margin-top': '85px'});
        $('.shoppingList .list-item-checkbox').show();
        $('.shoppingList #active_list .list-item-dragger').show();
        $('.shoppingList .list-item-activator').hide();
        $('.shoppingList .list-item-editor').hide();
        $('.shoppingList .list-item-delete').hide();
        // $('#shopping_list_edit_view_footer').hide();
        $('footer #shopping_list_edit_view_footer').hide();
        $('footer').hide();
        $('footer #standard_footer').show();
        //
        $('.both-lists').css({'height': 'auto', 'overflow':'visible'});
    };
    //
    //
    //
    deleteSingleItem = function (tgt) {
        function animComplete() {
            $('#' + tgt).css({'opacity': '1', 'display': 'none'});
        }
        TweenMax.to($('#' + tgt), 0.3, {'opacity': '0', onComplete: animComplete});
    };
    deleteCheckedItems = function () {
        var i, items;
        function animsComplete() {
            for (i = 0; i < items.length; i++) {
                $(items[i]).parent().css({'opacity': '1', 'display': 'none'});
            }
        }
        items = $('.list-item .list-item-activator-active');
        for (i = 0; i < items.length; i++) {
            if (i === items.length - 1) {
                TweenMax.to($(items[i]).parent(), 0.3, {'opacity': '0', onComplete: animsComplete});
            } else {
                TweenMax.to($(items[i]).parent(), 0.3, {'opacity': '0'});
            }
        }
    };
    deleteEntireShoppingList = function () {
        var i, items;
        items = $('.list-item');
        for (i = 0; i < items.length; i++) {
            $(items[i]).css({'display': 'none'});
        }
    };

    deleteInactiveShoppingList = function () {
        var i, items;
        items = $('#inactive_shopping_list .list-item');
        for (i = 0; i < items.length; i++) {
            $(items[i]).css({'display': 'none'});
        }
    };
    cancelDeletion = function () {
        console.log('cancel deletion');
        var i, items, active_items, inactive_items;
        items = $('.list-item');
        active_items = $('#active_list .list-item');
        inactive_items = $('#inactive_list .list-item');

        for (i = 0; i < items.length; i++) {
            $(items[i]).css({'display': 'block'});
            $(items[i]).children().removeClass('list-item-activator-active');
        }
        console.log(active_items.length);
        for (i = 0; i < active_items.length; i++) {
            $(active_items[i]).children('span').text(active_list_arr[i].name);
        }
        console.log(inactive_items.length);
        for (i = 0; i < inactive_items.length; i++) {
            $(inactive_items[i]).children('span').text(inactive_list_arr[i].name);
        }
        hideEditListView();
    };
    confirmDeletion = function () {
        var i, items;
        items = $('.list-item');
        for (i = 0; i < items.length; i++) {
            if ($(items[i]).is(":hidden")) {
                deleteItem($(items[i]));
            }
            $(items[i]).children().removeClass('list-item-activator-active');
        }
        resortActiveList();
        resortInactiveList();
        hideEditListView();
    };
    //
    //
    //
    handleEmptyList = function (arr1, arr2) {
        console.log('no items in the list');
        if(arr1.length < 1 && arr2.length < 1) {
             $('.no_data_message').show();        
        } else { 
            $('.no_data_message').hide(); 
        }
    };
    //
    //
    //
    removeFieldControlEventHandling = function () {
        $('#shopping_list_done_aff').unbind('touchend');
        $('#shopping_list_cancel_aff').unbind('touchend');
        $('#shopping_list_addedit_field').unbind('keypress');
    };
    //
    //
    //
    listItemAddTopBorder = function (obj) {
        $(obj).css({'border-top': '1px solid #fad214'});
    };
    listItemRemoveTopBorder = function (obj) {
        $(obj).css({'border-top': 'none'});
    };
    //
    //
    //
    InitUI = function () {
        // Initialize Application (after array values are established)
        loadList(active_list_div, active_list_arr, 'active');
        loadList(inactive_list_div, inactive_list_arr, 'inactive');  
        handleEmptyList(active_list_arr, inactive_list_arr);      

        //
        //
        //
        // Binds
        // Standard List View toggle controls
        $('.both-lists .list-item .list-item-checkbox').bind('touchend', function () {
            if ($(this).parent().parent().parent().attr('id') === 'active_shopping_list') {
                $('#inactive_list').prepend($(this).parent());
            } else {
                $('#active_list').append($(this).parent());
            }
            resortActiveList();
            resortInactiveList();
        });
        //
        // List Footer
        $('#delete_entire_list').bind('touchend', function () {
            deleteEntireShoppingList();
        });
        $('#delete_checked_items').bind('touchend', function () {
            deleteInactiveShoppingList();
        });
        //
        // Edit List View controls
        $('.both-lists .list-item .list-item-activator').bind('touchend', function () {
            if ($(this).hasClass('list-item-activator-active')) {
                $(this).siblings('.list-item-delete').hide();
            } else {
                $(this).siblings('.list-item-delete').show();
            }
            $(this).toggleClass('list-item-activator-active');
        });
        $('.both-lists .list-item .list-item-editor').bind('touchend', function () {
            showEditItemView($(this).parent().attr('id'));
        });
        $('.both-lists .list-item .list-item-delete').bind('touchend', function () {
            deleteSingleItem($(this).parent().attr('id'));
        });
        //
        //
        // List Landing Header
        $('#shopping_list_add_aff').bind('touchend', function (e) {
            e.stopPropagation();
            showAddItemView();
            return false;
        });
        $('#shopping_list_edit_aff').bind('touchend', function (e) {
            e.stopPropagation();
            showEditListView();
            return false;
        });
        //
        // List Edit Header
        $('#shopping_list_edit_cancel_aff').bind('touchend', function (e) {
            e.stopPropagation();
            cancelDeletion();
            return false;
        });
        $('#shopping_list_edit_done_aff').bind('touchend', function (e) {
            e.stopPropagation();
            confirmDeletion();
            return false;
        });
        //
        // Sortable List
        $("#active_list").sortable({handle: ".list-item-dragger",
                                    axis: "y",
                                    start: function (event, ui) {listItemAddTopBorder(ui.item)},
                                    stop: function (event, ui) {listItemRemoveTopBorder(ui.item);resortActiveList();}});
    };
    //
    // Populate array values
    DataAccess_loadList();
}());