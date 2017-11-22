// Trix.config.textAttributes.grey = { 
// 	style: { color: "grey" },
//   parser: function(element) {
//   	return element.style.color === "grey"
//   },
//   inheritable: true
//  }
Trix.config.textAttributes.grey = { 
  tagName: "grey",
  style: { color: "grey" },
  parser: function(element) {
    return element.style.color === "grey"
  },
  inheritable: true
 }
// Trix.config.textAttributes.right = { 
//   style: {align: "right" },
//   parser: function(element) {
//     return element.style.align === "right"
//   },
//   inheritable: true
//  }

// Trix.config.textAttributes.comic = { 
// 	style: { fontFamily: "Comic Sans MS" },
//   parser: function(element) {
//   	return element.style.fontFamily.match(/Comic Sans MS/)
//   },
//   inheritable: true
//  }

addEventListener("trix-initialize", function(event) {  
  var buttonHTML = '<button type="button" data-trix-attribute="grey" >grey</button>'

  // buttonHTML += '<button type="button" data-trix-attribute="comic">LOL</button>'

	event.target.toolbarElement.
  	querySelector(".trix-button-group--text-tools").
		insertAdjacentHTML("beforeend", buttonHTML)
})