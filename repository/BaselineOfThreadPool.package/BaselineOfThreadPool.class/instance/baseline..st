baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec group: 'default' with: #('Core' ). ].

	spec for: #'squeakCommon' do: [
		spec 
			package: 'ThreadPool';
			package: 'ThreadPoolTests' with: [
				spec requires: #('Core' ). ].
		spec 
			group: 'Core' with: #('ThreadPool' );
			group: 'Tests' with: #('ThreadPoolTests' ). ].

	spec for: #'gemstone' do: [
		spec package: 'ThreadPoolGemstone'.
		spec group: 'Core' with: #('ThreadPoolGemstone' ). ].
