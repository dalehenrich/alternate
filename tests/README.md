## Monticello Package Structure for file-based repositories

Directory structure:

<pre>
+-tests/
  +-metacello.st
  +-Sample-Tests.pkg\
</pre>

Metacello spec:

```Smalltalk
    spec
        for: #'common'
        do: [ spec package: 'Sample-Tests' with: [ spec requires: #('alternate.core.Sample-Core' 'alternate.core.Seaside30') ] ]
```