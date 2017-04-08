function Set() {
	this.elements = new Array();
	this.size = function() {
		return this.elements.length;
	}
	this.showAll=function(){
		var result="";
		for (i = 0; i < this.elements.length; i++) {
			result+=this.elements[i];
		}
		return result;
	}
	this.isEmpty = function() {
		return (this.elements.length < 1);
	}
	
	this.clear = function() {
		this.elements = new Array();
	}
	this.add = function(value) {
		if(!this.contain(value)){
			this.elements.push(value);
			this.elements.sort();
		}
	}
	this.push = function(value) {
		if(!this.contain(value)){
			this.elements.push(value);
		}
	}
	this.remove = function(value) {
		var bln = false;
		try {
			for (i = 0; i < this.elements.length; i++) {
				if (this.elements[i] == value) {
					this.elements.splice(i,1);
					return true;
				}
			}
		} catch(e) {
		bln = false;
		}
		return bln;
	}
	this.contain=function(value){
		for(i=0;i<this.elements.length;i++){
			if(this.elements[i]==value){
				return true;
			}
		}
		return false;
	}
}
