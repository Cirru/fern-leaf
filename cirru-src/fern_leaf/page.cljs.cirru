
ns fern-leaf.page
  :require
    [] reagent.core :as r
    [] cirru.parser-combinator :as p

declare cell

defn cell (index level node)
  if (string? node)
    [] :span
      {} :key index :class
        if (= index 0) "|cirru-node is-head" "|cirru-node"
      , node
    [] :div
      {} :key index :class
        if (every? string? node) "|cirru-list is-plain"
          if (> level 1) "|cirru-list is-inside" "|cirru-list"
      map-indexed
        fn (i item)$ cell i (inc level) item
        , node

defn template (content)
  let
      result $ p/pare @content
    if (:failed result)
      [] :div nil |failed
      cell 0 0 $ :value result
