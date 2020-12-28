//
// Copyright (c) Erik Yuzwa of Wazoo Media. All rights reserved.
// Licensed under the MIT license. See LICENSE.txt file in the project root for details.
//

// TODO: figure out how to export this for rails6 webpacker usage
// keep this simple as we can without any dependencies
(function() {

    var win = this;
    win.onload = function() {

        const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');

        // TODO: lots more error handling around localStorage needed even in 2020
        function switchTheme(e) {
            if (e.target.checked) {
                document.documentElement.setAttribute('data-theme', 'dark');
                localStorage.setItem('theme', 'dark');
            } else {
                document.documentElement.setAttribute('data-theme', 'light');
                localStorage.setItem('theme', 'light');
            }
        }

        toggleSwitch.addEventListener('change', switchTheme, false);

        const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;

        if (currentTheme) {
            document.documentElement.setAttribute('data-theme', currentTheme);

            if (currentTheme === 'dark') {
                toggleSwitch.checked = true;
            }
        }
    };

}).call(this);

