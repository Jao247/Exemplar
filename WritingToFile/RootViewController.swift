import UIKit

@IBObject class RootViewController : UIViewController {

	let groupIdentity = "group.jason.tester";
	let fileName = "example.txt";

	@IBOutlet weak var eText: UITextField;

	@IBAction func writeData(sender: AnyObject)
	{
		UIAlertView(title: "Title", message: eText.text, delegate: self, cancelButtonTitle: "Done", otherButtonTitles: nil);
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