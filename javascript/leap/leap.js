module.exports = function Year(year){
	this.year = year;
	this.isLeap = function(){
		return this.isDivisibleByFour() && (this.isLeapYearWithoutTwoZerosAtEnd() || this.isLeapYearWithTwoZerosAtEnd())
	}
	
	this.isDivisibleByFour = function(){
		return this.year % 4 == 0;
	}
	
	this.isDivisibleBy400 = function(){
		return this.year % 400 == 0; 
	}
	
	this.yearHasTwoZerosAtEnd = function(){
		return this.year % 100 == 0;
	}
	
	this.isLeapYearWithoutTwoZerosAtEnd = function(){
		return !this.yearHasTwoZerosAtEnd();
	}
	
	this.isLeapYearWithTwoZerosAtEnd = function(){
		return this.isDivisibleBy400();
	}
};


