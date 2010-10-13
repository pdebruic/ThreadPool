running
tearDown 
	super tearDown.
	"just so it's left in a working state after tests run"
	ThreadPool startUp
