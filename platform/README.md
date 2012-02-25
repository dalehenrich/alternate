## Monticello Package Structure for file-based repositories

Directory structure:

<pre>
+-platform/
  +-metacello.st
  +-Sample-Platform.gemstone.pkg\
  +-Sample-Platform.pharo.pkg\
  +-Sample-Platform.squeak.pkg\
</pre>

Metacello spec:

```Smalltalk
   spec
        for: #'gemstone'
        do: [ 
            spec package: 'Sample-Platform.gemstone' with: [ 
                spec requires: 'alternate.core.Sample-Core' ] ].
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Platform.pharo' with: [ 
                spec requires: 'alternate.core.Sample-Core' ] ].
    spec
        for: #'squeak'
        do: [ 
            spec package: 'Sample-Platform.squeak' with: [ 
                spec requires: 'alternate.core.Sample-Core' ] ]
```