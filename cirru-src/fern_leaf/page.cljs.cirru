
ns fern-leaf.page
  :require
    [] reagent.core :as r
    [] cirru.parser-combinator :as p

declare cell

defn cell (node)
  if (string? node)
    [] :span
      {} :class |cirru-node :key node
      , node
    [] :div
      {} :class |cirru-list :key node
      for ([] item node)
        cell item

defn template (content)
  let
      result $ p/pare @content
    if (:failed result)
      [] :div nil |failed
      cell $ :value result
