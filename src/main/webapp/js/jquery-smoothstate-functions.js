;(function ($) {
    'use strict';
    var $body = $('html, body'),
        content  = $('#main').smoothState({
            development: true,
            onStart : {
                duration: 500,
                render: function (url, $container) {
                    content.toggleAnimationClass('is-exiting');
                    $body.animate({ 'scrollTop': 0 });
                }
            },
            onEnd : {
                duration: 500, // Duration of the animations, if any.
                render: function (url, $container, $content) {
                    $body.css('cursor', 'auto');
                    $body.find('a').css('cursor', 'auto');
                    $container.html($content);
                }
            },
            callback : function(url, $container, $content) {
                loadScripts();
            }
        }).data('smoothState');
})(jQuery);