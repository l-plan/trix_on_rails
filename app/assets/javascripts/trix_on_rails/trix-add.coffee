Trix.config.textAttributes.grey =
  tagName: "grey"
  # style: color: "grey" , "text-align": "right"
  # tagName: "div"
  # className: 'left'
  parser: (element) ->
    element.style.color == "grey"
  inheritable: true

addEventListener "trix-initialize", (event) ->  
  buttonHTML = '<button type="button" data-trix-attribute="grey" >grey</button>'
	
  event.target.toolbarElement.querySelector(".trix-button-group--text-tools").insertAdjacentHTML("beforeend", buttonHTML)


Trix.config.blockAttributes.right =
  # right:
  tagName: "right"
  # parse: false
  parser: (element) ->
    element.style.color == "grey"
    
addEventListener "trix-initialize", (event) ->  
  buttonHTML = '<button type="button" data-trix-attribute="right" >right</button>'
	
  event.target.toolbarElement.querySelector(".trix-button-group--block-tools").insertAdjacentHTML("beforeend", buttonHTML)