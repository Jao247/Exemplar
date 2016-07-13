import UIKit

@IBObject class RootViewController : UIViewController {

	let groupIdentity = "group.jason.tester";
	let fileName = "example.txt";

	@IBOutlet weak var eText: UITextField;

	@IBAction func alertMsg(sender: AnyObject)
	{
		let alert = UIAlertView(title: "Title", message: eText.text, delegate: self, cancelButtonTitle: "Done", otherButtonTitles: nil);
		alert.show();
	}

        

	public override func viewDidLoad() 
	{
		super.viewDidLoad()
	}

	public override func didReceiveMemoryWarning() 
	{
		super.didReceiveMemoryWarning()
	}

}
