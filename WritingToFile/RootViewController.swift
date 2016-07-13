import UIKit

@IBObject class RootViewController : UIViewController {

    let groupIdentity = "group.jason.tester";
    let fileName = "/example.txt";

    @IBOutlet weak var eText: UITextField;

    @IBAction func alertMsg(sender: AnyObject)
    {
        let fileMgr = NSFileManager.defaultManager();
		let dir = fileMgr.containerURLForSecurityApplicationGroupIdentifier(groupIdentity);

        let data: NSData = eText.text!.dataUsingEncoding(NSStringEncoding.UTF8StringEncoding)!;
        
        try! fileMgr.createFileAtPath(dir!.absoluteString + fileName, contents: data, attributes: nil);
        let alert = UIAlertView(title: "Accomplished", message: "\"\(eText.text)\"\nHas been written to a file.", delegate: self, cancelButtonTitle: "Done", otherButtonTitles: nil);
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
