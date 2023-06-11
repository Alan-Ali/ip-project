
// The  OR is used for when we are going to send back arrays, and
// it will be dealt with using OR logical operators
 const containsOR = (query:HTMLElement,css_class:string | string[]):boolean =>{

    if (Array.isArray(css_class)) {
        for (let i:number = 0; i < css_class.length; i++) {
            if (query.classList.contains(css_class[i])) {
                return true;
            }
        }
    } else {
        if (query.classList.contains(css_class)) {
            return true;
        }
    }
    return false;
};

// The AND is used for when we are going to send back arrays, and
// it will be dealt with using AND logical operators
 const containsAND = (query:HTMLElement,css_class:string | string[]):boolean => {

    if (Array.isArray(css_class)) {
        for (let i:number = 0; i < css_class.length; i++) {
            if(!query.classList.contains(css_class[i])) {
                return false;
            }
        }

    }else{
        if (!query.classList.contains(css_class)) {
            return false;
        }
    }
    return true;
};


 const replaceClasses = (element:HTMLElement | HTMLElement[], css_class:string | string[], replacement:string | string[]):void => {
    // console.log()
    if (Array.isArray(css_class)) {
        if(Array.isArray(element)){
            for(let j:number = 0; element.length; j++){
                for (let i:number = 0; i < css_class.length; i++) {
                    if (element[j].classList.contains(css_class[i])) {
                        element[j].classList.remove(css_class[i]);
                    }
                }
                if (Array.isArray(replacement)) {
                    for (let i:number = 0; i < replacement.length; i++) {
                        element[j].classList.add(replacement[i]);
                    }
                } else {
                    element[j].classList.add(replacement);
                }
            }

        }else{
            for (let i:number = 0; i < css_class.length; i++) {
                if (element.classList.contains(css_class[i])) {
                    element.classList.remove(css_class[i]);
                }
            }
            if (Array.isArray(replacement)) {
                for (let i:number = 0; i < replacement.length; i++) {
                    element.classList.add(replacement[i]);
                }
            } else {
                element.classList.add(replacement);
            }
        }



    } else {
        if(Array.isArray(element)){
            for(let i:number = 0; i < element.length;i++){
                if (element[i].classList.contains(css_class)) {
                    element[i].classList.remove(css_class);
                    if (Array.isArray(replacement)) {
                        for (let j:number = 0; j < replacement.length; j++) {
                            element[i].classList.add(replacement[j]);
                        }
                    } else {
                        element[i].classList.add(replacement);
                    }

                }
            }
        }else if (element.classList.contains(css_class)) {
            element.classList.remove(css_class);
            if (Array.isArray(replacement)) {
                for (let i:number = 0; i < replacement.length; i++) {
                    element.classList.add(replacement[i]);
                }
            } else if(replacement !== "") {
                element.classList.add(replacement);
            }

        }

    }
    // return element;
}


let getCookie = (cname) => {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);

    let ca = decodedCookie.split(';');
    for(let i = 0; i < ca.length; i++) {
        let c = ca[i];
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
}




const MONTHS:string[] = [
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
    var cfg:{count, section} = config || {};
    var count:number = cfg.count || 12;
    var section:number = cfg.section;
    var values:string[] = [];
    var i:number, value:string;

    for (i = 0; i < count; ++i) {
        value = MONTHS[Math.ceil(i) % 12];
        values.push(value.substring(0, section));
    }

    return values;
}




 const byQuery = (query:string):HTMLElement => {
    return document.querySelector(query) as HTMLElement;
}

 const allByQuery = (query:string):Array<HTMLElement> => {
    //@ts-ignore
     return [...document.querySelectorAll(query)] as Array<HTMLElement>;
}

 const byTag = (tag_name:string):Array<HTMLElement> => {
    // @ts-ignore
     return [...document.getElementsByTagName(tag_name)] as Array<HTMLElement>;
}

 const byClass = (class_name:string): Array<HTMLElement> => {
    // @ts-ignore
     return [...document.getElementsByClassName(class_name) ] as Array<HTMLElement>;
}
 const byId = (id_name:string):HTMLElement => {
    return document.getElementById(id_name) as HTMLElement;
}

 const byName = (tag_name:string):Array<HTMLElement> => {
    // @ts-ignore
     return [...document.getElementsByName(tag_name)] as Array<HTMLElement>
}
 const write = (word:string) => {
    return document.write(word);
}

