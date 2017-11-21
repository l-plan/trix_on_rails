Trix.config.textAttributes.red = { 
	style: { color: "red" },
  parser: function(element) {
  	return element.style.color === "red"
  },
  inheritable: true
 }

Trix.config.textAttributes.comic = { 
	style: { fontFamily: "Comic Sans MS" },
  parser: function(element) {
  	return element.style.fontFamily.match(/Comic Sans MS/)
  },
  inheritable: true
 }

addEventListener("trix-initialize", function(event) {  
  var buttonHTML = '<button type="button" data-trix-attribute="red" >rood</button>'

  buttonHTML += '<button type="button" data-trix-attribute="comic">LOL</button>'

	event.target.toolbarElement.
  	querySelector(".trix-button-group--text-tools").
		insertAdjacentHTML("beforeend", buttonHTML)
})