insert into decks (id, name) values (1, "English Vocabulary"),
                                    (2, "JavaScript String"),
                                    (3, "JavaScript Array"),
                                    (4, "JavaScript Object"),
                                    (5, "JavaScript Document"),
                                    (6, "JavaScript Element");
                                    
insert into cards (question, answer, deck_id) values
  ("Condescend", "to stoop down to anothers level; to patronize", 1),
  ("Orthodox", "conventional; adhering to established ways", 1),
  ("Iconoclast", "a person who challenges time honored traditions or beliefs", 1),
  ("Indolence", "laziness", 1),
  ("Congenial", "pleasant; agreeably suitable", 1),
  ("Preclude", "to prevent; to make things impossible; to shut out", 1),
  ("Stock", "of a common, ordinary, or overused type", 1),
  ("Apprehensive", "worried, anxious", 1),
  ("Reprehensible", "worthy of blame or censure", 1),
  ("Arrogant", "feeling superior to others; boastful", 1),
  ("Elusive", "hard to pin down; evasive", 1),
  ("Virulent", "extremely poisonous; malignant; full of hate", 1),
  ("Ameliorate", "to make better", 1),
  ("Acquiesce", "to give in; to agree", 1),
  ("Dubious", "doubtful; uncertain", 1),
  ("Flagrant", "shocking; outstandingly bad", 1),
  ("Plausible", "believable, worthy of approval", 1),
  ("Blasphemy", "irreverence; an insult", 1),
  ("Apocryphal", "of doubtful origin; false", 1),
  ("Cryptic", "mysterious", 1),
  ("Levity", "lightness; frivolity; unseriousness", 1),
  ("Alleviate", "to lessen; to relieve; to make bearable", 1),
  ("Innate", "existing from birth; inborn; inherent", 1),
  ("Nascent", "coming into existence; emerging", 1),
  ("Voluminous", "very large; spacious", 1),
  ("Esoteric", "hard to understand; peculiar", 1),
  ("Extraneous", "irrelevant; extra; unimportant", 1),
  ("Tedious", "boring", 1),
  ("Caustic", "like acid; corrosive", 1),
  ("Exhaustive", "thorough, complete", 1),
  ("Jeopardy", "danger", 1),
  ("Digress", "to go off the subject", 1);
  

insert into cards (question, answer, deck_id) values 
  ("String.charAt()", "Returns the character at the specified index position.", 2),
  ("String.charCodeAt()", "Returns the Unicode of the character at the specified index.", 2),
  ("String.concat()", "Joins two or more strings, and returns a new joined string.", 2),
  ("String.fromCharCode()", "Converts Unicode values to characters.", 2),
  ("String.indexOf()", "Returns the position of the first found occurrence of a specified value in a string.", 2),
  ("String.lastIndexOf()", "Returns the position of the last found occurrence of a specified value in a string", 2),
  ("String.length()", "Returns the length of a string.", 2),
  ("String.localeCompare()", "Compares two strings in the current locale.", 2),
  ("String.match()", "Searches a string for a match against a regular expression, and returns the matches.", 2),
  ("String.replace()", "Searches a string for a specified value, or a regular expression, and returns a new string where the specified values are replaced.", 2),
  ("String.search()", "Searches a string for a specified value, or regular expression, and returns the position of the match.", 2),
  ("String.slice()", "Extracts a part of a string and returns a new string", 2),
  ("String.split()", "Splits a string into an array of substrings.", 2),
  ("String.substring()", "Extracts the characters from a string, between two specified indices.", 2),
  ("String.toLocaleLowerCase()", "Converts a string to lowercase letters, according to the host's locale.", 2),
  ("String.toLocaleUpperCase()", "Converts a string to uppercase letters, according to the host's locale.", 2),
  ("String.toLowerCase()", "Converts a string to lowercase letters", 2),
  ("String.toString()", "Returns the value of a string object.", 2),
  ("String.toUpperCase()", "Converts a string to uppercase letters.", 2),
  ("String.trim()", "Removes whitespace from both ends of a string.", 2),
  ("String.valueOf()", "Returns the primitive value of a String object.", 2),
  ("Returns the character at the specified index position.", "String.charAt()", 2),
  ("Returns the Unicode of the character at the specified index.", "String.charCodeAt()", 2),
  ("Joins two or more strings, and returns a new joined string.", "String.concat()", 2),
  ("Converts Unicode values to characters.", "String.fromCharCode()", 2),
  ("Returns the position of the first found occurrence of a specified value in a string.", "String.indexOf()", 2),
  ("Returns the position of the last found occurrence of a specified value in a string", "String.lastIndexOf()", 2),
  ("Returns the length of a string.", "String.length()", 2),
  ("Compares two strings in the current locale.", "String.localeCompare()", 2),
  ("Searches a string for a match against a regular expression, and returns the matches.", "String.match()", 2),
  ("Searches a string for a specified value, or a regular expression, and returns a new string where the specified values are replaced.", "String.replace()", 2),
  ("Searches a string for a specified value, or regular expression, and returns the position of the match.", "String.search()", 2),
  ("Extracts a part of a string and returns a new string", "String.slice()", 2),
  ("Splits a string into an array of substrings.", "String.split()", 2),
  ("Extracts the characters from a string, between two specified indices.", "String.substring()", 2),
  ("Converts a string to lowercase letters, according to the host's locale.", "String.toLocaleLowerCase()", 2),
  ("Converts a string to uppercase letters, according to the host's locale.", "String.toLocaleUpperCase()", 2),
  ("Converts a string to lowercase letters", "String.toLowerCase()", 2),
  ("Returns the value of a string object.", "String.toString()", 2),
  ("Converts a string to uppercase letters.", "String.toUpperCase()", 2),
  ("Removes whitespace from both ends of a string.", "String.trim()", 2),
  ("Returns the primitive value of a String object.", "String.valueOf()", 2);

insert into cards (question, answer, deck_id) values  
  ("Array.concat()", "Joins two or more arrays, and returns a copy of the joined arrays.", 3),
  ("Array.every()", "Tests whether some condition holds for all elements of an array.", 3),
  ("Array.filter()", "Returns array elements that pass a predicate.", 3),
  ("Array.forEach()", "Invoke a function for each array element.", 3),
  ("Array.indexOf()", "Search the array for an element and returns its position.", 3),
  ("Array.join()", "Joins all elements of an array into a string.", 3),
  ("Array.lastIndexOf()", "Search the array for an element, starting at the end, and returns its position.", 3),
  ("Array.length", "Sets or returns the number of elements in an array.", 3),
  ("Array.map()", "Returns a new array with elements computed by a function.", 3),
  ("Array.pop()", "Removes the last element of an array, and returns that element.", 3),
  ("Array.push()", "Adds new elements to the end of an array, and returns the new length.", 3),
  ("Array.reduce()", "Returns a reduced value of the array as computed by a function being applied to all elements from left-to-right.", 3),
  ("Array.reduceRight()", "Returns a reduced value of the array as computed by a function being applied to all elements from right-to-left.", 3),
  ("Array.reverse()", "Reverses the order of the elements in an array.", 3),
  ("Array.shift()", "Removes the first element of an array, and returns that element.", 3),
  ("Array.slice()", "Selects a part of an array, and returns the new array.", 3),
  ("Array.some()", "Test whether a predicate is true for any element.", 3),
  ("Array.sort()", "Sorts the elements of an array.", 3),
  ("Array.splice()", "Adds/Removes elements from an array.", 3),
  ("Array.toLocaleString()", "Convert an array to a localized string.", 3),
  ("Array.toString()", "Converts an array to a string, and returns the result.", 3),
  ("Array.unshift()", "Insert elements at the beginning of an array.", 3),
  ("Joins two or more arrays, and returns a copy of the joined arrays.", "Array.concat()", 3),
  ("Tests whether some condition holds for all elements of an array.", "Array.every()", 3),
  ("Returns array elements that pass a predicate.", "Array.filter()", 3),
  ("Invoke a function for each array element.", "Array.forEach()", 3),
  ("Search the array for an element and returns its position.", "Array.indexOf()", 3),
  ("Joins all elements of an array into a string.", "Array.join()", 3),
  ("Search the array for an element, starting at the end, and returns its position.", "Array.lastIndexOf()", 3),
  ("Sets or returns the number of elements in an array.", "Array.length", 3),
  ("Returns a new array with elements computed by a function.", "Array.map()", 3),
  ("Removes the last element of an array, and returns that element.", "Array.pop()", 3),
  ("Adds new elements to the end of an array, and returns the new length.", "Array.push()", 3),
  ("Returns a reduced value of the array as computed by a function being applied to all elements from left-to-right.", "Array.reduce()", 3),
  ("Returns a reduced value of the array as computed by a function being applied to all elements from right-to-left.", "Array.reduceRight()", 3),
  ("Reverses the order of the elements in an array.", "Array.reverse()", 3),
  ("Removes the first element of an array, and returns that element.", "Array.shift()", 3),
  ("Selects a part of an array, and returns the new array.", "Array.slice()", 3),
  ("Test whether a predicate is true for any element.", "Array.some()", 3),
  ("Sorts the elements of an array.", "Array.sort()", 3),
  ("Adds/Removes elements from an array.", "Array.splice()", 3),
  ("Convert an array to a localized string.", "Array.toLocaleString()", 3),
  ("Converts an array to a string, and returns the result.", "Array.toString()", 3),
  ("Insert elements at the beginning of an array.", "Array.unshift()", 3);

insert into cards (question, answer, deck_id) values
  ("Object.create()", "Create an object with specified prototype and properties.", 4),
  ("Object.defineProperties()", "Create or configure multiple properties on a given object.", 4),
  ("Object.defineProperty()", "Create or configure a single property on a given object.", 4),
  ("Object.freeze()", "Make an object immuntable.", 4),
  ("Object.getOwnPropertyDescriptor()", "Query property attributes", 4),
  ("Object.getOwnPropertyNames()", "Return the names of non-inherited properties.", 4),
  ("Object.getPrototypeOf()", "Return the prototype of an object.", 4),
  ("Object.hasOwnProperty()", "Check whether a property is inherited.", 4),
  ("Object.isExtensible()", "Check whether new properties can be added to an object.", 4),
  ("Object.isFrozen()", "Check whether an object is immutable.", 4),
  ("Object.isPrototypeOf()", "Check whether one object is the prototype of another.", 4),
  ("Object.isSealed()", "Check whether properties can be added to or deleted from an object.", 4),
  ("Object.keys()", "Return an object's enumerable property names.", 4),
  ("Object.preventExtensions()", "Don't allow new properties on an object.", 4),
  ("Object.propertyisEnumerable()", "Check whether an object's property will be seen by a for/in loop.", 4),
  ("Object.seal()", "Prevent the addition or deletion of properties.", 4),
  ("Object.toLocaleString()", "Return an object's localized string representation.", 4),
  ("Object.toString()", "Define an object's string representation.", 4),
  ("Object.valueOf()", "The primitive value of the specified object.", 4),
  ("Create an object with specified prototype and properties.", "Object.create()", 4),
  ("Create or configure multiple properties on a given object.", "Object.defineProperties()", 4),
  ("Create or configure a single property on a given object.", "Object.defineProperty()", 4),
  ("Make an object immuntable.", "Object.freeze()", 4),
  ("Query property attributes", "Object.getOwnPropertyDescriptor()", 4),
  ("Return the names of non-inherited properties.", "Object.getOwnPropertyNames()", 4),
  ("Return the prototype of an object.", "Object.getPrototypeOf()", 4),
  ("Check whether a property is inherited.", "Object.hasOwnProperty()", 4),
  ("Check whether new properties can be added to an object.", "Object.isExtensible()", 4),
  ("Check whether an object is immutable.", "Object.isFrozen()", 4),
  ("Check whether one object is the prototype of another.", "Object.isPrototypeOf()", 4),
  ("Check whether properties can be added to or deleted from an object.", "Object.isSealed()", 4),
  ("Return an object's enumerable property names.", "Object.keys()", 4),
  ("Don't allow new properties on an object.", "Object.preventExtensions()", 4),
  ("Check whether an object's property will be seen by a for/in loop.", "Object.propertyisEnumerable()", 4),
  ("Prevent the addition or deletion of properties.", "Object.seal()", 4),
  ("Return an object's localized string representation.", "Object.toLocaleString()", 4),
  ("Define an object's string representation.", "Object.toString()", 4),
  ("The primitive value of the specified object.", "Object.valueOf()", 4);

insert into cards (question, answer, deck_id) values
  ("document.addEventListener()", "Attaches an event handler to the document.", 5),
  ("document.adoptNode(node)", "Returns an adopted node from another document to this document.", 5),
  ("document.anchors", "Returns a collection of all the anchors in the document.", 5),
  ("document.applets", "Returns a collection of all the applets in the document.", 5),
  ("document.baseURI", "Returns the absolute base URI of a document.", 5),
  ("document.body", "Returns the body element of the document.", 5),
  ("document.close()", "Closes the output stream previously opened with document.open()", 5),
  ("document.cookie", "Returns all name/value pairs of cookies in the document.", 5),
  ("document.createAttribute()", "Creates an attribute node.", 5),
  ("document.createComment()", "Creates a Comment node with the specified text.", 5),
  ("document.createDocumentFragment()", "Creates an empty DocumentFragment node.", 5),
  ("document.createElement()", "Creates an Element node.", 5),
  ("document.createTextNode()", "Creates a Text node.", 5),
  ("document.doctype", "Returns the Document Type Declaration associated with the document.", 5),
  ("document.documentElement", "Returns the Document Element of the document (the HTML element).", 5),
  ("document.documentMode", "Returns the mode used by the browser to render the document.", 5),
  ("document.documentURI", "Sets or returns the location of the document.", 5),
  ("document.domain", "Returns the domain name of the server that loaded the document.", 5),
  ("document.domConfig", "Returns the configuration used when normalizeDocument() is invoked.", 5),
  ("document.embeds", "Returns a collection of all the embeds in the document.", 5),
  ("document.forms", "Returns a collection of all the forms in the document.", 5),
  ("document.getElementById()", "Returns the element that has the ID attribute with the specified value.", 5),
  ("document.getElementsByClassName()", "Returns a NodeList containing all elements with the specified class name.", 5),
  ("document.getElementsByName()", "Accesses all elements with a specified name.", 5),
  ("document.getElementsByTagName()", "Returns a NodeList containing all elements with the specified tagname.", 5),
  ("document.head", "Returns the head element of the document.", 5),
  ("document.images", "Returns a collection of all the images in the document.", 5),
  ("document.implementation", "Returns the DOMImplementation object that handles this document.", 5),
  ("document.ImportNode()", "Imports a node from another document.", 5),
  ("document.InputEncoding", "Returns the encoding, character set, used for the document.", 5),
  ("document.lastModified", "Returns the date and time the document was last modified.", 5),
  ("document.links", "Returns a collection of all the links in the document.", 5),
  ("document.normalize()", "Removes empty Text nodes, and joins adjacent nodes.", 5),
  ("document.normalizeDocument()", "Removes empty Text nodes, and joins adjacent nodes.", 5),
  ("document.open()", "Opens an HTML output stream to collect output from document.write()", 5),
  ("document.querySelector()", "Returns the first element that matches a specified CSS selector(s) in the document.", 5),
  ("document.querySelectorAll()", "Returns a static NodeList containing all elements that matches a specified CSS selector(s) in the document.", 5),
  ("document.readyState", "Returns the (loading) status of the document.", 5),
  ("document.referrer", "Returns the URL of the document that loaded the current document.", 5),
  ("document.removeEventListener()", "Removes an event handler from the document (that has been attached with the addEventListener() method).", 5),
  ("document.renameNode()", "Renames the specified node.", 5),
  ("document.scripts", "Returns a collection of all the scripts in the document.", 5),
  ("document.strictErrorChecking", "Sets or returns whether error-checking is enforced or not.", 5),
  ("document.title", "Sets or returns the title of the document", 5),
  ("document.URL", "Returns the full URL of the document.", 5),
  ("document.write()", "Writes HTML expressions or JavaScript code to a document.", 5),
  ("document.writeIn()", "Same as write(), but adds a newline character after each statement.", 5),
  ("Attaches an event handler to the document.", "document.addEventListener()", 5),
  ("Returns an adopted node from another document to this document.", "document.adoptNode(node)", 5),
  ("Returns a collection of all the anchors in the document.", "document.anchors", 5),
  ("Returns a collection of all the applets in the document.", "document.applets", 5),
  ("Returns the absolute base URI of a document.", "document.baseURI", 5),
  ("Returns the body element of the document.", "document.body", 5),
  ("Closes the output stream previously opened with document.open()", "document.close()", 5),
  ("Returns all name/value pairs of cookies in the document.", "document.cookie", 5),
  ("Creates an attribute node.", "document.createAttribute()", 5),
  ("Creates a Comment node with the specified text.", "document.createComment()", 5),
  ("Creates an empty DocumentFragment node.", "document.createDocumentFragment()", 5),
  ("Creates an Element node.", "document.createElement()", 5),
  ("Creates a Text node.", "document.createTextNode()", 5),
  ("Returns the Document Type Declaration associated with the document.", "document.doctype", 5),
  ("Returns the Document Element of the document (the HTML element).", "document.documentElement", 5),
  ("Returns the mode used by the browser to render the document.", "document.documentMode", 5),
  ("Sets or returns the location of the document.", "document.documentURI", 5),
  ("Returns the domain name of the server that loaded the document.", "document.domain", 5),
  ("Returns the configuration used when normalizeDocument() is invoked.", "document.domConfig", 5),
  ("Returns a collection of all the embeds in the document.", "document.embeds", 5),
  ("Returns a collection of all the forms in the document.", "document.forms", 5),
  ("Returns the element that has the ID attribute with the specified value.", "document.getElementById()", 5),
  ("Returns a NodeList containing all elements with the specified class name.", "document.getElementsByClassName()", 5),
  ("Accesses all elements with a specified name.", "document.getElementsByName()", 5),
  ("Returns a NodeList containing all elements with the specified tagname.", "document.getElementsByTagName()", 5),
  ("Returns the head element of the document.", "document.head", 5),
  ("Returns a collection of all the images in the document.", "document.images", 5),
  ("Returns the DOMImplementation object that handles this document.", "document.implementation", 5),
  ("Imports a node from another document.", "document.ImportNode()", 5),
  ("Returns the encoding, character set, used for the document.", "document.InputEncoding", 5),
  ("Returns the date and time the document was last modified.", "document.lastModified", 5),
  ("Returns a collection of all the links in the document.", "document.links", 5),
  ("Removes empty Text nodes, and joins adjacent nodes.", "document.normalize()", 5),
  ("Removes empty Text nodes, and joins adjacent nodes.", "document.normalizeDocument()", 5),
  ("Opens an HTML output stream to collect output from document.write()", "document.open()", 5),
  ("Returns the first element that matches a specified CSS selector(s) in the document.", "document.querySelector()", 5),
  ("Returns a static NodeList containing all elements that matches a specified CSS selector(s) in the document.", "document.querySelectorAll()", 5),
  ("Returns the (loading) status of the document.", "document.readyState", 5),
  ("Returns the URL of the document that loaded the current document.", "document.referrer", 5),
  ("Removes an event handler from the document (that has been attached with the addEventListener() method).", "document.removeEventListener()", 5),
  ("Renames the specified node.", "document.renameNode()", 5),
  ("Returns a collection of all the scripts in the document.", "document.scripts", 5),
  ("Sets or returns whether error-checking is enforced or not.", "document.strictErrorChecking", 5),
  ("Sets or returns the title of the document", "document.title", 5),
  ("Returns the full URL of the document.", "document.URL", 5),
  ("Writes HTML expressions or JavaScript code to a document.", "document.write()", 5),
  ("Same as write(), but adds a newline character after each statement.", "document.writeIn()", 5);

insert into cards (question, answer, deck_id) values
  ("Element.accessKey", "Sets or returns the accesskey for an element.", 6),
  ("Element.addEventListener()", "Attaches an event handler to the specified element.", 6),
  ("Element.appendChild()", "Adds a new child node, to an element, as the last child node.", 6),
  ("Element.attributes", "Returns a NamedNodeMap of an element's attributes.", 6),
  ("Element.childNodes", "Returns a NodeList of child nodes for an element.", 6),
  ("Element.className", "Sets or returns the class attribute of an element.", 6),
  ("Element.clientHeight", "Returns the viewable height of an element.", 6),
  ("Element.clientWidth", "Returns the viewable width of an element.", 6),
  ("Element.cloneNode()", "Clones an element.", 6),
  ("Element.compareDocumentPosition()", "Compares the document position of two elements.", 6),
  ("Element.contentEditable", "Sets or returns whether the content of an element is editable or not.", 6),
  ("Element.dir", "Sets or returns the text direction of an element.", 6),
  ("Element.firstChild", "Returns the first child of an element.", 6),
  ("Element.getAttribute()", "Returns the specified attribute value of an element node.", 6),
  ("Element.getAttributeNode()", "Returns the specified attribute node.", 6),
  ("Element.getElementsByClassName()", "Returns a collection of all child elements with the specified class name.", 6),
  ("Element.getElementsByTagName()", "Returns a collection of all child elements with the specified tagname.", 6),
  ("Element.getFeature()", "Returns an object which implements the APIs of a specified feature.", 6),
  ("Element.getUserData()", "Returns the object associated to a key on an element.", 6),
  ("Element.hasAttribute()", "Returns true if an element has the specified attribute, otherwise false.", 6),
  ("Element.hasAttributes()", "Returns true if an element has any attributes, otherwise false.", 6),
  ("Element.hasChildNodes()", "Returns true if an element has any child nodes, otherwise false.", 6),
  ("Element.id", "Sets or returns the id of an element.", 6),
  ("Element.innerHTML", "Sets or returns the content of an element.", 6),
  ("Element.insertBefore()", "Inserts a new child node before a specified, existing, child node.", 6),
  ("Element.isContentEditable", "Returns true if the content of an element is editable, otherwise false.", 6),
  ("Element.isDefaultNamespace()", "Returns true if the content of an element is editable, otherwise false.", 6),
  ("Element.isEqualNode()", "Checks if two elements are equal.", 6),
  ("Element.isSameNode()", "Checks if two elements are the same node.", 6),
  ("Element.isSupported()", "Returns true if a specified feature is supported on the element.", 6),
  ("Element.lang", "Sets or returns the language code for an element.", 6),
  ("Element.lastChild", "Returns the last child of an element.", 6),
  ("Element.namespaceURI", "Returns the namespace URI of an element.", 6),
  ("Element.nextSibling", "Returns the next node at the same node tree level.", 6),
  ("Element.nodeName", "Returns the name of an element.", 6),
  ("Element.nodeType", "Returns the node type of an element.", 6),
  ("Element.nodeValue", "Sets or returns the value of an element.", 6),
  ("Element.normalize()", "Joins adjacent text nodes and removes empty text nodes in an element.", 6),
  ("Element.offsetHeight", "Returns the height of an element.", 6),
  ("Element.offsetWidth", "Returns the width of an element.", 6),
  ("Element.offsetLeft", "Returns the horizontal offset position of an element.", 6),
  ("Element.offsetParent", "Returns the offset container of an element.", 6),
  ("Element.offsetTop", "Returns the vertical offset position of an element.", 6),
  ("Element.ownerDocument", "Returns the root element (document object) for an element.", 6),
  ("Element.parentNode", "Returns the parent node of an element.", 6),
  ("Element.previousSibling", "Returns the previous element at the same node tree level.", 6),
  ("Element.querySelector()", "Returns the first child element that matches a specified CSS selector(s) of an element.", 6),
  ("Element.removeAttribute()", "Removes a specified attribute from an element.", 6),
  ("Element.removeAttributeNode()", "Removes a specified attribute node, and returns the removed node.", 6),
  ("Element.removeChild()", "Removes a child node from an element.", 6),
  ("Element.replaceChild()", "Replaces a child node in an element.", 6),
  ("Element.removeEventListener()", "Removes an event handler that has been attached with the addEventListener() method.", 6),
  ("Element.scrollHeight", "Returns the entire height of an element.", 6),
  ("Element.scrollLeft", "Returns the distance between the left edge of an element and the view.", 6),
  ("Element.scrollTop", "Returns the distance between the top edge of an element and the view.", 6),
  ("Element.scrollWidth", "Returns the entire width of an element.", 6),
  ("Element.setAttribute()", "Sets or changes the specified attribute, to the specified value.", 6),
  ("Element.setAttributeNode()", "Sets or changes the specified attribute node, to the specified value.", 6),
  ("Element.setIdAttribute()", "Sets or changes the attribute of the specified id, to the specified value.", 6),
  ("Element.setIdAttributeNode()", "Sets or changes the attribute node of the specified id, to the specified value.", 6),
  ("Element.setUserData()", "Associates an object to a key on an element.", 6),
  ("Element.style", "Sets or returns the style attribute of an element.", 6),
  ("Element.tabIndex", "Sets or returns the tab order of an element.", 6),
  ("Element.tagName", "Returns the tag name of an element.", 6),
  ("Element.textContent", "Sets or returns the textual content of a node and its descendants.", 6),
  ("Element.title", "Sets or returns the title attribute of an element.", 6),
  ("Element.toString()", "Converts an element to a string.", 6),
  ("Nodelist.item()", "Returns the node at the specified index in a NodeList.", 6),
  ("Nodelist.length", "Returns the number of nodes in a NodeList.", 6),
  ("Sets or returns the accesskey for an element.", "Element.accessKey", 6),
  ("Attaches an event handler to the specified element.", "Element.addEventListener()", 6),
  ("Adds a new child node, to an element, as the last child node.", "Element.appendChild()", 6),
  ("Returns a NamedNodeMap of an element's attributes.", "Element.attributes", 6),
  ("Returns a NodeList of child nodes for an element.", "Element.childNodes", 6),
  ("Sets or returns the class attribute of an element.", "Element.className", 6),
  ("Returns the viewable height of an element.", "Element.clientHeight", 6),
  ("Returns the viewable width of an element.", "Element.clientWidth", 6),
  ("Clones an element.", "Element.cloneNode()", 6),
  ("Compares the document position of two elements.", "Element.compareDocumentPosition()", 6),
  ("Sets or returns whether the content of an element is editable or not.", "Element.contentEditable", 6),
  ("Sets or returns the text direction of an element.", "Element.dir", 6),
  ("Returns the first child of an element.", "Element.firstChild", 6),
  ("Returns the specified attribute value of an element node.", "Element.getAttribute()", 6),
  ("Returns the specified attribute node.", "Element.getAttributeNode()", 6),
  ("Returns a collection of all child elements with the specified class name.", "Element.getElementsByClassName()", 6),
  ("Returns a collection of all child elements with the specified tagname.", "Element.getElementsByTagName()", 6),
  ("Returns an object which implements the APIs of a specified feature.", "Element.getFeature()", 6),
  ("Returns the object associated to a key on an element.", "Element.getUserData()", 6),
  ("Returns true if an element has the specified attribute, otherwise false.", "Element.hasAttribute()", 6),
  ("Returns true if an element has any attributes, otherwise false.", "Element.hasAttributes()", 6),
  ("Returns true if an element has any child nodes, otherwise false.", "Element.hasChildNodes()", 6),
  ("Sets or returns the id of an element.", "Element.id", 6),
  ("Sets or returns the content of an element.", "Element.innerHTML", 6),
  ("Inserts a new child node before a specified, existing, child node.", "Element.insertBefore()", 6),
  ("Returns true if the content of an element is editable, otherwise false.", "Element.isContentEditable", 6),
  ("Returns true if the content of an element is editable, otherwise false.", "Element.isDefaultNamespace()", 6),
  ("Checks if two elements are equal.", "Element.isEqualNode()", 6),
  ("Checks if two elements are the same node.", "Element.isSameNode()", 6),
  ("Returns true if a specified feature is supported on the element.", "Element.isSupported()", 6),
  ("Sets or returns the language code for an element.", "Element.lang", 6),
  ("Returns the last child of an element.", "Element.lastChild", 6),
  ("Returns the namespace URI of an element.", "Element.namespaceURI", 6),
  ("Returns the next node at the same node tree level.", "Element.nextSibling", 6),
  ("Returns the name of an element.", "Element.nodeName", 6),
  ("Returns the node type of an element.", "Element.nodeType", 6),
  ("Sets or returns the value of an element.", "Element.nodeValue", 6),
  ("Joins adjacent text nodes and removes empty text nodes in an element.", "Element.normalize()", 6),
  ("Returns the height of an element.", "Element.offsetHeight", 6),
  ("Returns the width of an element.", "Element.offsetWidth", 6),
  ("Returns the horizontal offset position of an element.", "Element.offsetLeft", 6),
  ("Returns the offset container of an element.", "Element.offsetParent", 6),
  ("Returns the vertical offset position of an element.", "Element.offsetTop", 6),
  ("Returns the root element (document object) for an element.", "Element.ownerDocument", 6),
  ("Returns the parent node of an element.", "Element.parentNode", 6),
  ("Returns the previous element at the same node tree level.", "Element.previousSibling", 6),
  ("Returns the first child element that matches a specified CSS selector(s) of an element.", "Element.querySelector()", 6),
  ("Removes a specified attribute from an element.", "Element.removeAttribute()", 6),
  ("Removes a specified attribute node, and returns the removed node.", "Element.removeAttributeNode()", 6),
  ("Removes a child node from an element.", "Element.removeChild()", 6),
  ("Replaces a child node in an element.", "Element.replaceChild()", 6),
  ("Removes an event handler that has been attached with the addEventListener() method.", "Element.removeEventListener()", 6),
  ("Returns the entire height of an element.", "Element.scrollHeight", 6),
  ("Returns the distance between the left edge of an element and the view.", "Element.scrollLeft", 6),
  ("Returns the distance between the top edge of an element and the view.", "Element.scrollTop", 6),
  ("Returns the entire width of an element.", "Element.scrollWidth", 6),
  ("Sets or changes the specified attribute, to the specified value.", "Element.setAttribute()", 6),
  ("Sets or changes the specified attribute node, to the specified value.", "Element.setAttributeNode()", 6),
  ("Sets or changes the attribute of the specified id, to the specified value.", "Element.setIdAttribute()", 6),
  ("Sets or changes the attribute node of the specified id, to the specified value.", "Element.setIdAttributeNode()", 6),
  ("Associates an object to a key on an element.", "Element.setUserData()", 6),
  ("Sets or returns the style attribute of an element.", "Element.style", 6),
  ("Sets or returns the tab order of an element.", "Element.tabIndex", 6),
  ("Returns the tag name of an element.", "Element.tagName", 6),
  ("Sets or returns the textual content of a node and its descendants.", "Element.textContent", 6),
  ("Sets or returns the title attribute of an element.", "Element.title", 6),
  ("Converts an element to a string.", "Element.toString()", 6),
  ("Returns the node at the specified index in a NodeList.", "Nodelist.item()", 6),
  ("Returns the number of nodes in a NodeList.", "Nodelist.length", 6);
