root = exports ? this

root.qwer.directive "keypress", ($document) ->
  (scope, element, attrs) ->
    $document.bind "keypress", (e) ->
      charCode = e.charCode
      scope.userKeyPress charCode

root.qwer.directive 'keySquare', () ->
  restrict: 'E'
  templateUrl: 'partials/keySquare'
  scope: 
    key: '=',
    styleToggle: '='
  
  link: (scope, element, attrs) ->
    scope.keyCode = scope.key.charCodeAt(0)
  
    scope.keySquareStyle = ->
      if (scope.styleToggle)
        return {
          'background-color' : '#555'
        }
      else 
        return {
          'background-color' : '#444'
        }

    scope.spellBlockStyle = ->
      if (scope.styleToggle)
        return {
          'background-color' : '#777'
        }
      else 
        return {
          'background-color' : '#999'
        }
      
    scope.spellKeyStyle = ->
      if (scope.styleToggle)
        return {
          'background-color' : '#ddd'
        }
      else 
        return {
          'background-color' : '#ccc'
        }
            
