// Get characters from the right end of a string
String.prototype.right = function(n) {
	return n < this.length ? this.slice(this.length - n) : this;
};

// Trim whitespace from both ends of a string
String.prototype.trim = function() {
	return this.replace(/^\s*|\s*$/g, "");
};
String.prototype.endsWith = function(str) {
	return (this.match(str + "$") == str);
};
String.prototype.startsWith = function(prefix) {
	return !prefix || this.substring(0, prefix.length) == prefix;
};
String.prototype.isBlank = function() {
	return "" == this.trim();
};
String.prototype.getBytesCount = function()  
{  
	return (this.replace(/[^\u0000-\u00ff]/g,"  ").length); 
};
String.prototype.isNum = function()  
{  
	var patrn = /^-?[0-9]*$/;
	return (patrn.test(this)); 
};
String.prototype.isPositiveNumber= function()  
{  
	var patrn = /^\d+$/; 
	return (patrn.test(this)); 
};
String.prototype.replaceAll=function(s1,s2){
	return this.replace(new RegExp(s1,"gm"),s2); 
};
String.prototype.toNum=function(){
	return Number(this.replace(/\D/g,'')); 
};

function isArray(o) {
    return Object.prototype.toString.call(o) === '[object Array]';
}

/**
* 动态替换占位符 同messageFormat
* eg.  "hello {0} ".format("world") -> hello world ! 
* eg.  "hello {0} {1}".format(["world","!"]) -> hello world !  
*/
String.prototype.format=function(){
  if(arguments.length==0) return this;
  var args=arguments[0];
  if(!isArray(args)){
  	args=[args];
  }
  for(var s=this, i=0; i<args.length; i++)  
    s=s.replace(new RegExp("\\{"+i+"\\}","g"), args[i]);  
  return s;  
}; 
