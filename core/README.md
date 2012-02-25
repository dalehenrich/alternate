## Monticello Package Structure for file-based repositories

Directory structure:

<pre>
+-core/
  +-metacello.st
  +-Sample-Core.pkg\
</pre>

Metacello spec:

```Smalltalk
    spec
        for: #'common'
        do: [ 
            spec
                project: 'Seaside30'
                with: [ 
                    spec
                        version: '3.0.6.3';
                        repository: 'github://Seaside/Seaside30/Seaside.source' ].
            spec
                package: 'Sample-Core'
                with: [ 
                    spec
                        requires: 'Seaside30';
                        includes: 'alternate.platform' ] ]
```