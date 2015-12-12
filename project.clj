(defproject cirru/fern-leaf "0.0.1"
  :description "Styles of displaying Cirru code"
  :url "https://github.com/Cirru/fern-leaf"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.7.0"]
                 [org.clojure/clojurescript "1.7.170"]
                 [reagent "0.5.1"]
                 [hiccup "1.0.5"]
                 [cljs-ajax "0.5.1"]
                 [binaryage/devtools "0.4.1"]
                 [cirru/parser-combinator "0.0.6"]]
  :plugins [[cirru/lein-sepal "0.0.13"]
            [mvc-works/lein-html-entry "0.0.2"]
            [lein-cljsbuild "1.1.1"]
            [lein-figwheel "0.5.0-1"]]
  :cirru-sepal {:paths ["cirru-src" "cirru-src-clj"]}
  :html-entry {:file "src-clj/html.clj" :output "resources/public/index.html"}
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}}

  :clean-targets ^{:protect false} [:target-path "resources/public/cljs"]
  :cljsbuild {:builds {:dev {:source-paths ["src"]
                             :figwheel {:websocket-host "192.168.0.129"}
                             :compiler {:main "fern-leaf.core"
                                        :asset-path "cljs/out"
                                        :output-to  "resources/public/cljs/main.js"
                                        :output-dir "resources/public/cljs/out"}}
                       :prod {:source-paths ["src"]
                              :compiler {:output-to "resources/public/cljs/main.js"
                                         :optimizations :advanced
                                        :pretty-print false}}}}
  :figwheel {:css-dirs ["resources/public/css"]})
