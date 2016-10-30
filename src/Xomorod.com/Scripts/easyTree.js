/**
 * Web Easy Tree
 * @Copyright behzad khosravifar 2016
 * @Author behzad
 * @Version 0.1
 */
(function ($) {
    $.fn.EasyTree = function (options) {
        var defaults = {
            selectable: true,
            deletable: false,
            editable: false,
            addable: false,
            i18n: {
                deleteNull: 'delete',
                deleteConfirmation: 'delete',
                confirmButtonLabel: 'confirm',
                editNull: 'edit',
                editMultiple: 'edit multiple',
                addMultiple: 'add multiple',
                collapseTip: 'collapse',
                expandTip: 'expand',
                selectTip: 'select',
                unselectTip: 'unselect',
                editTip: 'edit',
                addTip: 'add',
                deleteTip: 'delete',
                cancelButtonLabel: 'cancel'
            }
        };

        var warningAlert = $('<div class="alert alert-warning alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><strong></strong><span class="alert-content"></span> </div> ');
        var dangerAlert = $('<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><strong></strong><span class="alert-content"></span> </div> ');

        var createInput = $('<div class="input-group"><input type="text" class="form-control"><span class="input-group-btn"><button type="button" class="btn btn-default btn-success confirm"></button> </span><span class="input-group-btn"><button type="button" class="btn btn-default cancel"></button> </span> </div> ');

        options = $.extend(defaults, options);

        this.each(function () {
            var easyTree = $(this);
            $.each($(easyTree).find('ul > li'), function() {
                var text;
                if($(this).is('li:has(ul)')) {
                    var children = $(this).find(' > ul');
                    $(children).remove();
                    text = $(this).text();

                    $(this).html('<span><span class="glyphicon"></span><a href="javascript: void(0);"></a> </span>');
                    $(this).find(' > span > span').addClass('glyphicon-minus');
                    $(this).find(' > span > a').text(text);
                    //$(this).find(' > span > a').attr('href', 
                    $(this).append(children);
                }
                else {
                    text = $(this).text();
                    $(this).html('<span><span class="glyphicon"></span><a href="javascript: void(0);"></a> </span>');
                    $(this).find(' > span > span').addClass('glyphicon-link');
                    $(this).find(' > span > a').text(text);
                }
            });

            $(easyTree).find('li:has(ul)').addClass('parent_li').find(' > span').attr('title', options.i18n.collapseTip);

            // add easy tree toolbar dom
            if (options.deletable || options.editable || options.addable) {
                $(easyTree).prepend('<div class="easy-tree-toolbar"></div> ');
            }

            // collapse or expand
            $(easyTree).delegate('li.parent_li > span', 'click', function (e) {
                var children = $(this).parent('li.parent_li').find(' > ul > li');
                if (children.is(':visible')) {
                    children.hide('fast');
                    $(this).attr('title', options.i18n.expandTip)
                        .find(' > span.glyphicon')
                        .addClass('glyphicon-plus')
                        .removeClass('glyphicon-minus');
                } else {
                    children.show('fast');
                    $(this).attr('title', options.i18n.collapseTip)
                        .find(' > span.glyphicon')
                        .addClass('glyphicon-minus')
                        .removeClass('glyphicon-plus');
                }
                e.stopPropagation();
            });

            // selectable, only single select
            if (options.selectable) {
                $(easyTree).find('li > span > a').attr('title', options.i18n.selectTip);
                $(easyTree).find('li > span > a').click(function (e) {
                    var li = $(this).parent().parent();
                    if (li.hasClass('li_selected')) {
                        $(this).attr('title', options.i18n.selectTip);
                        $(li).removeClass('li_selected');
                    }
                    else {
                        $(easyTree).find('li.li_selected').removeClass('li_selected');
                        $(this).attr('title', options.i18n.unselectTip);
                        $(li).addClass('li_selected');
                    }

                    e.stopPropagation();

                });
            }

            // Get selected items
            var getSelectedItems = function () {
                return $(easyTree).find('li.li_selected');
            };
        });
    };
})(jQuery);
