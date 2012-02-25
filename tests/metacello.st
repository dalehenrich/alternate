"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/opt/git/alternate/tests/'
"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
    spec
        for: #'common'
        do: [ spec package: 'Sample-Tests' with: [ spec requires: #('alternate.core.Sample-Core' 'alternate.core.Seaside30') ] ] ].
