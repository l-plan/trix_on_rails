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
    
    xhr.open 'POST', "/uploads.json", true

    xhr.setRequestHeader( 'X-CSRF-Token', token )

    xhr.upload.onprogress = (event) ->
      progress = undefined
      progress = event.loaded / event.total * 100
      attachment.setUploadProgress progress

    xhr.onload = ->
      response = JSON.parse(@responseText)

      attachment.setAttributes
        url: response.image_url
        href: response.image_url
        upload_id: response.upload_id

      console.log attachment

    xhr.send form

  deleteFile = (n) ->
    upload_id =  n.attachment.attributes.values.upload_id

    token = $('meta[name="csrf-token"]').attr('content')
    $.ajax
      type: 'DELETE'
      headers: {
        'X-CSRF-Token': token
      }

      url: "/uploads/#{upload_id}"

      cache: false
      contentType: false
      processData: false

  return