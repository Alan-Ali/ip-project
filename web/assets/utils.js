var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
// The  OR is used for when we are going to send back arrays, and
// it will be dealt with using OR logical operators
var containsOR = function (query, css_class) {
    if (Array.isArray(css_class)) {
        for (var i = 0; i < css_class.length; i++) {
            if (query.classList.contains(css_class[i])) {
                return true;
            }
        }
    }
    else {
        if (query.classList.contains(css_class)) {
            return true;
        }
    }
    return false;
};
// The AND is used for when we are going to send back arrays, and
// it will be dealt with using AND logical operators
var containsAND = function (query, css_class) {
    if (Array.isArray(css_class)) {
        for (var i = 0; i < css_class.length; i++) {
            if (!query.classList.contains(css_class[i])) {
                return false;
            }
        }
    }
    else {
        if (!query.classList.contains(css_class)) {
            return false;
        }
    }
    return true;
};
var replaceClasses = function (element, css_class, replacement) {
    // console.log()
    if (Array.isArray(css_class)) {
        if (Array.isArray(element)) {
            for (var j = 0; element.length; j++) {
                for (var i = 0; i < css_class.length; i++) {
                    if (element[j].classList.contains(css_class[i])) {
                        element[j].classList.remove(css_class[i]);
                    }
                }
                if (Array.isArray(replacement)) {
                    for (var i = 0; i < replacement.length; i++) {
                        element[j].classList.add(replacement[i]);
                    }
                }
                else {
                    element[j].classList.add(replacement);
                }
            }
        }
        else {
            for (var i = 0; i < css_class.length; i++) {
                if (element.classList.contains(css_class[i])) {
                    element.classList.remove(css_class[i]);
                }
            }
            if (Array.isArray(replacement)) {
                for (var i = 0; i < replacement.length; i++) {
                    element.classList.add(replacement[i]);
                }
            }
            else {
                element.classList.add(replacement);
            }
        }
    }
    else {
        if (Array.isArray(element)) {
            for (var i = 0; i < element.length; i++) {
                if (element[i].classList.contains(css_class)) {
                    element[i].classList.remove(css_class);
                    if (Array.isArray(replacement)) {
                        for (var j = 0; j < replacement.length; j++) {
                            element[i].classList.add(replacement[j]);
                        }
                    }
                    else {
                        element[i].classList.add(replacement);
                    }
                }
            }
        }
        else if (element.classList.contains(css_class)) {
            element.classList.remove(css_class);
            if (Array.isArray(replacement)) {
                for (var i = 0; i < replacement.length; i++) {
                    element.classList.add(replacement[i]);
                }
            }
            else if (replacement !== "") {
                element.classList.add(replacement);
            }
        }
    }
    // return element;
};
var getCookie = function (cname) {
    var name = cname + "=";
    console.log(document.cookie);
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        // this is for cutting down the spaces, if they exist
        while (c.charAt(0) === ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) === 0) {
            return c.substring(name.length, c.length);
        }
        // this another way using split
        // let c_array = c.split('=')
        // console.log(c_array[1])
        // return c_array[1];
    }
    // console.log()
    return "";
};
var MONTHS = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
];
function months(config) {
    var cfg = config || {};
    var count = cfg.count || 12;
    var section = cfg.section;
    var values = [];
    var i, value;
    for (i = 0; i < count; ++i) {
        value = MONTHS[Math.ceil(i) % 12];
        values.push(value.substring(0, section));
    }
    return values;
}
var byQuery = function (query) {
    return document.querySelector(query);
};
var allByQuery = function (query) {
    //@ts-ignore
    return __spreadArray([], document.querySelectorAll(query), true);
};
var byTag = function (tag_name) {
    // @ts-ignore
    return __spreadArray([], document.getElementsByTagName(tag_name), true);
};
var byClass = function (class_name) {
    // @ts-ignore
    return __spreadArray([], document.getElementsByClassName(class_name), true);
};
var byId = function (id_name) {
    return document.getElementById(id_name);
};
var byName = function (tag_name) {
    // @ts-ignore
    return __spreadArray([], document.getElementsByName(tag_name), true);
};
var write = function (word) {
    return document.write(word);
};
