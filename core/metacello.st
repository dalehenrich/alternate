"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/alternate/core/'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
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
                        includes: 'alternate.platform' ] ] ].
