"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/sample/core/'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
   spec
        for: #'gemstone'
        do: [ 
            spec package: 'Sample-Platform.gemstone' with: [ spec requires: 'alternate.core.Sample-Core' ] ].
    spec
        for: #'pharo'
        do: [ 
            spec package: 'Sample-Platform.pharo' with: [ spec requires: 'alternate.core.Sample-Core' ] ].
    spec
        for: #'squeak'
        do: [ 
            spec package: 'Sample-Platform.squeak' with: [ spec requires: 'alternate.core.Sample-Core' ] ] ].
