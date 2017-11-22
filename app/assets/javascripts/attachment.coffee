$ ->
  document.addEventListener 'trix-attachment-add', (event) ->
    attachment = event.attachment
    if attachment.file
      return sendFile(attachment)
    return

  document.addEventListener 'trix-attachment-remove', (event) ->
    attachment = event.attachment
    deleteFile attachment

  sendFile = (attachment) ->
    file = attachment.file
    form = new FormData
    form.append 'Content-Type', file.type
    form.append 'upload[image]', file
    xhr = new XMLHttpRequest

    token = $('meta[name="csrf-token"]').attr('content')
    # token = Rails.csrfToken()
    
    xhr.open 'POST', "/uploads.json", true

    xhr.setRequestHeader( 'X-CSRF-Token', token )

    xhr.upload.onprogress = (event) ->
      progress = undefined
      progress = event.loaded / event.total * 100
      attachment.setUploadProgress progress

    xhr.onload = ->
      response = JSON.parse(@responseText)
      console.log "in onload......"
      # console.log response.url

      attachment.setAttributes
        # url: response.url
        url: response.image_url
        href: response.image_url
        # url: '/uploads/13'
        # href: '/uploads/13'
        # image_id: response.image_id
        # href: response.href
        # path: response.url
      console.log attachment

    xhr.send form

  deleteFile = (n) ->
    $.ajax
      type: 'DELETE'
      # url: '/images/' + n.attachment.attributes.values.image_id
      url: '/uploads/' + n.attachment.attributes.values.image_id
      cache: false
      contentType: false
      processData: false

  return