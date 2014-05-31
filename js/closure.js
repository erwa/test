var Object = (function() {
  var privateValue = 42;

  return function Constructor () {
    this.getValue =  function() {
      return privateValue;
    };
  };
})();

var o = new Object();
console.log(o.privateValue); // undefined
console.log(o.getValue());   // 42