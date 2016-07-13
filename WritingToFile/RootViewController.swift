import UIKit

@IBObject class RootViewController : UIViewController {

    let groupIdentity = "group.jason.tester";
    let fileName = "/example.txt";

    @IBOutlet weak var eText: UITextField;

    @IBAction func alertMsg(sender: AnyObject)
    {
		var alert = UIAlertView(title: "Attempting to write", message: "\"\(eText.text)\"", delegate: self, cancelButtonTitle: "Done", otherButtonTitles: nil);
        alert.show();
        let fileMgr = NSFileManager.defaultManager();
		let dir = fileMgr.containerURLForSecurityApplicationGroupIdentifier(groupIdentity);
       
		let path = dir!.URLByAppendingPathComponent(fileName, isDirectory: false);

		do{
			try eText.text!.writeToFile(path.absoluteString, atomically: true, encoding: NSStringEncoding.UTF8StringEncoding);
        } catch {
			NSLog("Error Occurred.");
		}
		alert = UIAlertView(title: "Accomplished", message: "File has been written", delegate: self, cancelButtonTitle: "Done", otherButtonTitles: nil);
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
