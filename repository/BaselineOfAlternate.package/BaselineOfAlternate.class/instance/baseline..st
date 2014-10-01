baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'External'
          with: [ 
              spec
                version: '1.0.0';
                loads: 'External-Core';
                repository: 'http://ss3.gemtalksystems.com/ss/external' ];
        baseline: 'Sample'
          with: [ spec repository: 'github://dalehenrich/sample:otto/repository' ];
        import: 'Sample' provides: #('Sample-Core' 'Sample-Tests');
        yourself.
      spec
        package: 'Alternate-Core'
          with: [ spec requires: #('Sample-Core' 'External') ];
        package: 'Alternate-Tests'
          with: [ spec requires: #('Alternate-Core' 'Sample-Tests') ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Alternate-Core');
        group: 'Tests' with: #('Alternate-Tests');
        group: 'Alternate Core' with: #('Core');
        group: 'Alternate Tests' with: #('Tests');
        yourself ]
