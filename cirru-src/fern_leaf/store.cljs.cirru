
ns fern-leaf.store
  :require
    [] reagent.core :as r
    [] ajax.core :refer $ [] GET

def content $ r/atom |

GET |demo.cirru $ {}
  :handler $ fn (response)
    reset! content response
  :error-handler $ fn (status status-text)
  :response-format :text
  :keywords? true
