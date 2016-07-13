import UIKit

@IBObject class RootViewController : UIViewController {

	let groupIdentity = "group.jason.tester";
	let fileName = "example.txt";

	@IBOutlet weak var eText: UITextField;

	@IBAction func writeData()
	{

	}

	public override func viewDidLoad() 
	{
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	public override func didReceiveMemoryWarning() 
	{
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}