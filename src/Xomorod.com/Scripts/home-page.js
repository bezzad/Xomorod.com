var timeout = 100;
loadHomepage();

function loadHomepage() {

    if (typeof jQuery == "undefined") { // jquery load complete ?
        setTimeout(function () { loadHomepage() }, timeout++);
    } else {
        jQuery(document)
            .ready(function () {
                var zerifFrame = jQuery("iframe.xomorod_google_map");
                var zerifFrameSrc = new Array();

                if (zerifFrame.length) {
                    jQuery.each(zerifFrame,
                        function (i, f) {
                            zerifFrameSrc[i] = jQuery(f).attr("src");
                            /*remove the src attribute so window will ignore these iframes*/
                            jQuery(f).attr("src", "");
                        });
                }

                function zerifDisplayIframeMap() {
                    if (zerifFrame.length) {
                        jQuery.each(zerifFrame,
                            function (a, x) {
                                /*put the src attribute value back*/
                                jQuery(x).attr("src", zerifFrameSrc[a]);
                            });
                    }
                }

                setTimeout(zerifDisplayIframeMap, 500);
            });

        /* Bootstrap Fix */
        if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement("style");
            msViewportStyle.appendChild(document.createTextNode("@-ms-viewport{width:auto!important}"));
            document.querySelector("head").appendChild(msViewportStyle);
        }

        /*=================================
        ===  SMOOTH SCROLL             ====
        =================================== */

        jQuery(document)
            .ready(function () {
                jQuery('#site-navigation a[href*="#"]:not([href="#"]), header.header a[href*="#"]:not([href="#"]), a.smoothScroll')
                    .bind("click",
                        function () {
                            var headerHeight;
                            var hash = this.hash;
                            var idName = hash.substring(1); // get id name
                            var alink = this; // this button pressed
                            // check if there is a section that had same id as the button pressed
                            if (jQuery("section [id*=" + idName + "]").length > 0 && jQuery(window).width() >= 751) {
                                jQuery(".current").removeClass("current");
                                jQuery(alink).parent("li").addClass("current");
                            } else {
                                jQuery(".current").removeClass("current");
                            }
                            if (jQuery(window).width() >= 751) {
                                headerHeight = jQuery("#main-nav").height();
                            } else {
                                headerHeight = 0;
                            }
                            if (location.pathname.replace(/^\//, "") === this.pathname.replace(/^\//, "") &&
                                location.hostname === this.hostname) {
                                var target = jQuery(this.hash);
                                target = target.length ? target : jQuery("[name=" + this.hash.slice(1) + "]");
                                if (target.length) {
                                    jQuery("html,body")
                                        .animate({
                                            scrollTop: target.offset().top - headerHeight + 5
                                        },
                                            1200);
                                    return false;
                                }
                            }
                        });
            });

        jQuery(document)
            .ready(function () {
                var headerHeight;
                jQuery(".current").removeClass("current");
                jQuery('#site-navigation a[href$="' + window.location.hash + '"]').parent("li").addClass("current");
                if (jQuery(window).width() >= 751) {
                    headerHeight = jQuery("#main-nav").height();
                } else {
                    headerHeight = 0;
                }
                if (location.pathname.replace(/^\//, "") === window.location.pathname.replace(/^\//, "") &&
                    location.hostname === window.location.hostname) {
                    var target = jQuery(window.location.hash);
                    if (target.length) {
                        jQuery("html,body")
                            .animate({
                                scrollTop: target.offset().top - headerHeight + 5
                            },
                                1200);
                        return false;
                    }
                }
            });

        /* latest news */
        jQuery(window)
            .load(function () {
                if (jQuery("#carousel-homepage-latestnews").length > 0) {
                    if (jQuery("#carousel-homepage-latestnews div.item").length < 2) {
                        jQuery("#carousel-homepage-latestnews > a").css("display", "none");
                    }
                    var maxheight = 0;
                    jQuery("#carousel-homepage-latestnews div.item")
                        .each(function () {
                            if (jQuery(this).height() > maxheight) {
                                maxheight = jQuery(this).height();
                            }
                        });
                    jQuery("#carousel-homepage-latestnews div.item").height(maxheight);
                }
            });

        /* testimonial Masonry style */
        var windowWidthOld;
        var existClass = false;
        jQuery(document)
            .ready(function () {
                if (jQuery(".testimonial-masonry").length > 0) {
                    existClass = true;
                    windowWidthOld = jQuery(".container").outerWidth();
                    if (windowWidthOld < 970) {
                        jQuery(".testimonial-masonry").zerifgridpinterest({ columns: 1, selector: ".feedback-box" });
                    } else {
                        jQuery(".testimonial-masonry").zerifgridpinterest({ columns: 3, selector: ".feedback-box" });
                    }
                }
            });

        jQuery(window)
            .resize(function () {
                if (windowWidthOld !== jQuery(".container").outerWidth() && existClass === true) {
                    windowWidthOld = jQuery(".container").outerWidth();
                    if (windowWidthOld < 970) {
                        jQuery(".testimonial-masonry").zerifgridpinterest({ columns: 1, selector: ".feedback-box" });
                    } else {
                        jQuery(".testimonial-masonry").zerifgridpinterest({ columns: 3, selector: ".feedback-box" });
                    }
                }
            });

        (function ($, window, document, undefined) {
            var defaults = {
                columns: 3,
                selector: "div",
                excludeParentClass: ""
            };

            function zerifGridPinterest(element, options) {
                this.element = element;
                this.options = $.extend({}, defaults, options);
                this.defaults = defaults;
                this.init();
            }

            zerifGridPinterest.prototype.init = function () {
                var self = this,
                    $container = $(this.element);
                var $selectOptions = $(this.element).children();
                self.make_magic($container, $selectOptions);
            };
            zerifGridPinterest.prototype.make_magic = function (container) {
                var self = this;
                var $container;
                var columnsHeight;
                var prefix;
                var uniqueClass;
                $container = $(container),
                    columnsHeight = [],
                    prefix = "zerif",
                    uniqueClass = prefix + "_grid_" + self.make_unique();
                var localClass = prefix + "_grid";
                var classname;
                var substrIndex = this.element.className.indexOf(prefix + "_grid_");
                if (substrIndex > -1) {
                    classname = this.element.className.substr(0,
                        this.element.className.length - uniqueClass.length - localClass.length);
                } else {
                    classname = this.element.className;
                }
                var myId;
                if (this.element.id === "") {
                    myId = prefix + "_id_" + self.make_unique();
                } else {
                    myId = this.element.id;
                }
                $container.after('<div id="' +
                    myId +
                    '" class="' +
                    classname +
                    " " +
                    localClass +
                    " " +
                    uniqueClass +
                    '"></div>');
                var i;
                for (i = 1; i <= this.options.columns; i++) {
                    columnsHeight.push(0);
                    var firstCols = "";
                    var lastCols = "";
                    if (i % self.options.columns === 1) {
                        firstCols = prefix + "_grid_first";
                    }
                    if (i % self.options.columns === 0) {
                        firstCols = prefix + "_grid_last";
                    }
                    $("." + uniqueClass)
                        .append('<div class="' +
                            prefix +
                            "_grid_col_" +
                            this.options.columns +
                            " " +
                            prefix +
                            "_grid_column_" +
                            i +
                            " " +
                            firstCols +
                            " " +
                            lastCols +
                            '"></div>');
                }
                if (this.element.className.indexOf(localClass) < 0) {
                    $container.children(this.options.selector)
                        .each(function (index) {
                            var min = Math.min.apply(null, columnsHeight);
                            var thisIndex = columnsHeight.indexOf(min) + 1;
                            $(this)
                                .attr(prefix + "grid-attr", "this-" + index)
                                .appendTo("." + uniqueClass + " ." + prefix + "_grid_column_" + thisIndex);
                            columnsHeight[thisIndex - 1] =
                                $("." + uniqueClass + " ." + prefix + "_grid_column_" + thisIndex)
                                .height();
                        });
                } else {
                    var noBoxes = $container.find(this.options.selector).length;
                    for (i = 0; i < noBoxes; i++) {
                        var min = Math.min.apply(null, columnsHeight);
                        var thisIndex = columnsHeight.indexOf(min) + 1;
                        $("#" + this.element.id)
                            .find("[" + prefix + 'grid-attr="this-' + i + '"]')
                            .appendTo("." + uniqueClass + " ." + prefix + "_grid_column_" + thisIndex);
                        columnsHeight[thisIndex - 1] =
                            $("." + uniqueClass + " ." + prefix + "_grid_column_" + thisIndex)
                            .height();
                    }
                }
                $container.remove();
            };
            zerifGridPinterest.prototype.make_unique = function () {
                var text = "";
                var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                for (var i = 0; i < 10; i++)
                    text += possible.charAt(Math.floor(Math.random() * possible.length));
                return text;
            };
            $.fn.zerifgridpinterest = function (options) {
                return this.each(function () {
                    var value = "";
                    if (!$.data(this, value)) {
                        $.data(this, value, new zerifGridPinterest(this, options));
                    }
                });
            };
        })(jQuery);


        /*=================================
        ===  JQUERY KNOB               ====
        =================================== */

        jQuery(document)
            .ready(function () {
                jQuery(".skill1")
                    .knob({
                        'max': 100,
                        'width': 64,
                        'readOnly': true,
                        'inputColor': ' #FFFFFF ',
                        'bgColor': ' #222222 ',
                        'fgColor': ' #e96656 '
                    });
                jQuery(".skill2")
                    .knob({
                        'max': 100,
                        'width': 64,
                        'readOnly': true,
                        'inputColor': ' #FFFFFF ',
                        'bgColor': ' #222222 ',
                        'fgColor': ' #34d293 '
                    });
                jQuery(".skill3")
                    .knob({
                        'max': 100,
                        'width': 64,
                        'readOnly': true,
                        'inputColor': ' #FFFFFF ',
                        'bgColor': ' #222222 ',
                        'fgColor': ' #3ab0e2 '
                    });
                jQuery(".skill4")
                    .knob({
                        'max': 100,
                        'width': 64,
                        'readOnly': true,
                        'inputColor': ' #FFFFFF ',
                        'bgColor': ' #222222 ',
                        'fgColor': ' #E7AC44 '
                    });
            });
    }
}