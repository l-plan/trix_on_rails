Trix.config.textAttributes.grey =
  tagName: "grey"
  parser: (element) ->
    element.style.color == "grey"
  inheritable: true

addEventListener "trix-initialize", (event) ->  
  buttonHTML = '<button type="button" data-trix-attribute="grey" >grey</button>'
	
  event.target.toolbarElement.querySelector(".trix-button-group--text-tools").insertAdjacentHTML("beforeend", buttonHTML)