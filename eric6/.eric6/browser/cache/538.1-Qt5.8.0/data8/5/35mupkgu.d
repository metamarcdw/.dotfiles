   �         Rhttps://www.instagram.com/static/scripts/polyfills/es5-sham.min.js/fc3c22cf2d67.js     %���     %�<"5�         
     O K           �      Content-Type   text/javascript   Cache-Control   max-age=1209600, no-transform   edge-control   max-age=1209600, no-transform   Content-Encoding   gzip   Last-Modified   Wed, 28 Sep 2016 23:55:28 GMT   Expires   Thu, 04 May 2017 11:13:26 GMT   Date   Thu, 20 Apr 2017 11:13:26 GMT (function(definition){if(typeof define=="function"){define(definition)}else if(typeof YUI=="function"){YUI.add("es5-sham",definition)}else{definition()}})(function(){var call=Function.prototype.call;var prototypeOfObject=Object.prototype;var owns=call.bind(prototypeOfObject.hasOwnProperty);var defineGetter;var defineSetter;var lookupGetter;var lookupSetter;var supportsAccessors;if(supportsAccessors=owns(prototypeOfObject,"__defineGetter__")){defineGetter=call.bind(prototypeOfObject.__defineGetter__);defineSetter=call.bind(prototypeOfObject.__defineSetter__);lookupGetter=call.bind(prototypeOfObject.__lookupGetter__);lookupSetter=call.bind(prototypeOfObject.__lookupSetter__)}if(!Object.getPrototypeOf){Object.getPrototypeOf=function getPrototypeOf(object){return object.__proto__||(object.constructor?object.constructor.prototype:prototypeOfObject)}}function doesGetOwnPropertyDescriptorWork(object){try{object.sentinel=0;return Object.getOwnPropertyDescriptor(object,"sentinel").value===0}catch(exception){}}if(Object.defineProperty){var getOwnPropertyDescriptorWorksOnObject=doesGetOwnPropertyDescriptorWork({});var getOwnPropertyDescriptorWorksOnDom=typeof document=="undefined"||doesGetOwnPropertyDescriptorWork(document.createElement("div"));if(!getOwnPropertyDescriptorWorksOnDom||!getOwnPropertyDescriptorWorksOnObject){var getOwnPropertyDescriptorFallback=Object.getOwnPropertyDescriptor}}if(!Object.getOwnPropertyDescriptor||getOwnPropertyDescriptorFallback){var ERR_NON_OBJECT="Object.getOwnPropertyDescriptor called on a non-object: ";Object.getOwnPropertyDescriptor=function getOwnPropertyDescriptor(object,property){if(typeof object!="object"&&typeof object!="function"||object===null){throw new TypeError(ERR_NON_OBJECT+object)}if(getOwnPropertyDescriptorFallback){try{return getOwnPropertyDescriptorFallback.call(Object,object,property)}catch(exception){}}if(!owns(object,property)){return}var descriptor={enumerable:true,configurable:true};if(supportsAccessors){var prototype=object.__proto__;object.__proto__=prototypeOfObject;var getter=lookupGetter(object,property);var setter=lookupSetter(object,property);object.__proto__=prototype;if(getter||setter){if(getter){descriptor.get=getter}if(setter){descriptor.set=setter}return descriptor}}descriptor.value=object[property];descriptor.writable=true;return descriptor}}if(!Object.getOwnPropertyNames){Object.getOwnPropertyNames=function getOwnPropertyNames(object){return Object.keys(object)}}if(!Object.create){var createEmpty;var supportsProto=Object.prototype.__proto__===null;if(supportsProto||typeof document=="undefined"){createEmpty=function(){return{__proto__:null}}}else{createEmpty=function(){var iframe=document.createElement("iframe");var parent=document.body||document.documentElement;iframe.style.display="none";parent.appendChild(iframe);iframe.src="javascript:";var empty=iframe.contentWindow.Object.prototype;parent.removeChild(iframe);iframe=null;delete empty.constructor;delete empty.hasOwnProperty;delete empty.propertyIsEnumerable;delete empty.isPrototypeOf;delete empty.toLocaleString;delete empty.toString;delete empty.valueOf;empty.__proto__=null;function Empty(){}Empty.prototype=empty;createEmpty=function(){return new Empty};return new Empty}}Object.create=function create(prototype,properties){var object;function Type(){}if(prototype===null){object=createEmpty()}else{if(typeof prototype!=="object"&&typeof prototype!=="function"){throw new TypeError("Object prototype may only be an Object or null")}Type.prototype=prototype;object=new Type;object.__proto__=prototype}if(properties!==void 0){Object.defineProperties(object,properties)}return object}}function doesDefinePropertyWork(object){try{Object.defineProperty(object,"sentinel",{});return"sentinel"in object}catch(exception){}}if(Object.defineProperty){var definePropertyWorksOnObject=doesDefinePropertyWork({});var definePropertyWorksOnDom=typeof document=="undefined"||doesDefinePropertyWork(document.createElement("div"));if(!definePropertyWorksOnObject||!definePropertyWorksOnDom){var definePropertyFallback=Object.defineProperty,definePropertiesFallback=Object.defineProperties}}if(!Object.defineProperty||definePropertyFallback){var ERR_NON_OBJECT_DESCRIPTOR="Property description must be an object: ";var ERR_NON_OBJECT_TARGET="Object.defineProperty called on non-object: ";var ERR_ACCESSORS_NOT_SUPPORTED="getters & setters can not be defined "+"on this javascript engine";Object.defineProperty=function defineProperty(object,property,descriptor){if(typeof object!="object"&&typeof object!="function"||object===null){throw new TypeError(ERR_NON_OBJECT_TARGET+object)}if(typeof descriptor!="object"&&typeof descriptor!="function"||descriptor===null){throw new TypeError(ERR_NON_OBJECT_DESCRIPTOR+descriptor)}if(definePropertyFallback){try{return definePropertyFallback.call(Object,object,property,descriptor)}catch(exception){}}if(owns(descriptor,"value")){if(supportsAccessors&&(lookupGetter(object,property)||lookupSetter(object,property))){var prototype=object.__proto__;object.__proto__=prototypeOfObject;delete object[property];object[property]=descriptor.value;object.__proto__=prototype}else{object[property]=descriptor.value}}else{if(!supportsAccessors){throw new TypeError(ERR_ACCESSORS_NOT_SUPPORTED)}if(owns(descriptor,"get")){defineGetter(object,property,descriptor.get)}if(owns(descriptor,"set")){defineSetter(object,property,descriptor.set)}}return object}}if(!Object.defineProperties||definePropertiesFallback){Object.defineProperties=function defineProperties(object,properties){if(definePropertiesFallback){try{return definePropertiesFallback.call(Object,object,properties)}catch(exception){}}for(var property in properties){if(owns(properties,property)&&property!="__proto__"){Object.defineProperty(object,property,properties[property])}}return object}}if(!Object.seal){Object.seal=function seal(object){return object}}if(!Object.freeze){Object.freeze=function freeze(object){return object}}try{Object.freeze(function(){})}catch(exception){Object.freeze=function freeze(freezeObject){return function freeze(object){if(typeof object=="function"){return object}else{return freezeObject(object)}}}(Object.freeze)}if(!Object.preventExtensions){Object.preventExtensions=function preventExtensions(object){return object}}if(!Object.isSealed){Object.isSealed=function isSealed(object){return false}}if(!Object.isFrozen){Object.isFrozen=function isFrozen(object){return false}}if(!Object.isExtensible){Object.isExtensible=function isExtensible(object){if(Object(object)!==object){throw new TypeError}var name="";while(owns(object,name)){name+="?"}object[name]=true;var returnValue=owns(object,name);delete object[name];return returnValue}}});
/*
//@ sourceMappingURL=es5-sham.map
*/