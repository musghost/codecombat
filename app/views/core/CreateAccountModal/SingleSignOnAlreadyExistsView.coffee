ModalView = require 'views/core/ModalView'
template = require 'templates/core/create-account-modal/single-sign-on-already-exists-view'
forms = require 'core/forms'
User = require 'models/User'

module.exports = class SingleSignOnAlreadyExistsView extends ModalView
  id: 'single-sign-on-already-exists-view'
  template: template

  events:
    'click .back-button': 'onClickBackButton'

  initialize: ({ @sharedState }) ->

  onClickBackButton: ->
    @sharedState.set {
      ssoUsed: undefined
      ssoAttrs: undefined
    }
    -> @trigger 'nav-back'
