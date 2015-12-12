
ns fern-leaf.core
  :require
    [] clojure.string :as string
    [] reagent.core :as r
    [] devtools.core :as devtools
    [] fern-leaf.store :as store
    [] fern-leaf.page :as page

enable-console-print!

devtools/set-pref! :install-sanity-hints true
devtools/install!

r/render-component ([] page/template store/content)
  .-body js/document
