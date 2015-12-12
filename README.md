# fern-leaf

Displaying styled Cirru code

Demo http://repo.cirru.org/fern-leaf/

## Usage

Develop:

```bash
lein html-entry
lein cirru-sepal watch
rlwrap lein figwheel
```

Deploy:

```bash
lein html-entry
lein cirru-sepal
lein clean
lein cljsbuild once prod
```

## License

Copyright © 2015 jiyinyiyong

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
