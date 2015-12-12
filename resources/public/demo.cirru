
ns fern-leaf.page
  :require
    [] reagent.core :as r
    [] cirru.parser-combinator :as p

declare cell

def list-style $ {}
  :padding-left 10
  :border "|1px solid red"

def node-style $ {}
  :font-family "|menlo"
  :border "|1px solid red"

defn cell (node)
  if (string? node)
    [] :span
      {} :class |cirru-node :key node :style node-style
      , node
    [] :div
      {} :class |cirru-list :style list-style :key node
      for ([] item node)
        cell item

defn template (content)
  let
      result $ p/pare @content
    println $ :value result
    if (:failed result)
      [] :div nil |failed
      cell $ :value result
