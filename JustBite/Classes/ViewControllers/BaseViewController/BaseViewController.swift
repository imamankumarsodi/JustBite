//
//  BaseViewController.swift
//
//  Created by Sandeep Vishwakarma on 4/16/18.
//  Copyright © 2018 Sandeep. All rights reserved.
//

import Foundation
import UIKit

enum UINavigationBarButtonType: Int {
    case back
    case cross
    case done
    case add
    case location
    case show
    case unFavourite
    case favourite
    case icCancel
    case menu
    case cart

    
    var iconImage: UIImage? {
        switch self {
        case .back:  return UIImage(named: "back_button")
        case .cross: return UIImage(named: "icBackW")
        case .done: return UIImage(named: "icDone")
        case .add: return UIImage(named: "")
        case .location: return UIImage(named: "icAddLocation")
        case .show: return UIImage(named: "icShowSave")
        case .unFavourite: return UIImage(named: "icUnselectFav")
        case .favourite: return UIImage(named: "icSelectFav")
        case .icCancel: return UIImage(named: "icCancel")
        case .menu: return UIImage(named: "menu_bar")
        case .cart: return UIImage(named: "cart")
            
        }
    }
}

protocol BaseViewControllerDelegate {
    func navigationBarButtonDidTapped(_ buttonType: UINavigationBarButtonType)
}

class BaseViewController: UIViewController {
    
    var baseDelegate: BaseViewControllerDelegate?
    private let navButtonWidth = 40.0
    private let edgeInset = CGFloat(10.0)
    private var subControllerName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.baseDelegate = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
  
    func keyBoardView() -> UIView {
        
        let doneToolbar: UIView = UIView(frame: CGRect(x: 0, y: 0, width: MAIN_SCREEN_WIDTH, height: 40))
        
        let button = UIButton(frame: CGRect(x: 30, y: 0, width: MAIN_SCREEN_WIDTH - 60, height: 30))
        button.setTitle("CONTINUE", for: .normal)
        button.addTarget(self, action: #selector(actionContinue), for: .touchUpInside)
        button.setTitleColor(UIColor(red: 217.0/255.0, green: 80.0/255.0, blue: 99.0/255.0, alpha: 1.0), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        
        doneToolbar.addSubview(button)
        
        return doneToolbar
    }
    
    @objc func actionContinue() {
        
    }
    
    func backViewController() -> UIViewController {
        let numberOfViewControllers: Int = self.navigationController!.viewControllers.count
        if numberOfViewControllers >= 2 {
            return self.navigationController!.viewControllers[numberOfViewControllers - 2]
        }
        return self.navigationController!.viewControllers[numberOfViewControllers-1]
    }
    
    func setupNavigationBarTitle(_ title: String, leftBarButtonsType: [UINavigationBarButtonType], rightBarButtonsType: [UINavigationBarButtonType], titleViewFrame: CGRect = CGRect(x: 0, y: 0, width: 180, height: 44)) {
        if !title.isEmpty {
            
            self.navigationItem.titleView = createLabel(text: title)
        }
        
        var rightBarButtonItems = [UIBarButtonItem]()
        for rightButtonType in rightBarButtonsType {
            let rightButtonItem = getBarButtonItem(for: rightButtonType, isLeftBarButtonItem: false)
            rightBarButtonItems.append(rightButtonItem)
        }
        if rightBarButtonItems.count > 0 {
            self.navigationItem.rightBarButtonItems = rightBarButtonItems
        }
        var leftBarButtonItems = [UIBarButtonItem]()
        for leftButtonType in leftBarButtonsType {
            let leftButtonItem = getBarButtonItem(for: leftButtonType, isLeftBarButtonItem: true)
            leftBarButtonItems.append(leftButtonItem)
        }
        if leftBarButtonItems.count > 0 {
            self.navigationItem.leftBarButtonItems = leftBarButtonItems
        }
    }
    
    func getBarButtonItem(for type: UINavigationBarButtonType, isLeftBarButtonItem: Bool) -> UIBarButtonItem {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: Int(navButtonWidth), height: NAVIGATION_BAR_DEFAULT_HEIGHT))
        button.setTitleColor(.black, for: UIControl.State())
        button.titleLabel?.font = UIFont.init(name: "Kefa Regular", size: 10)
        button.titleLabel?.textAlignment = .right
        button.tag = type.rawValue
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: isLeftBarButtonItem ? -edgeInset : edgeInset, bottom: 0, right: isLeftBarButtonItem ? edgeInset : -edgeInset)
        if let iconImage = type.iconImage {
            button.setImage(iconImage, for: UIControl.State())
        } //else if let title = type.title {
        //   button.setTitle(title, for: UIControlState())
        //   button.frame.size.width = 40.0
        // }
        button.addTarget(self, action: #selector(BaseViewController.navigationButtonTapped(_:)), for: .touchUpInside)
        return UIBarButtonItem(customView: button)
    }
    
    func createLabel(text: String) -> UILabel {
        
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 200, height: 44))
        let frame = rect
        let lbl = UILabel.init(frame: frame)
        lbl.text = text
        lbl.numberOfLines = 0
        lbl.textAlignment = NSTextAlignment.center
        lbl.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 18.0)
        lbl.textColor = UIColor.white
        
        return lbl
    }
    
    
    func addColorToNavigationBarAndSafeArea(color:UIColor,className:String){
        subControllerName = className
        if className == "HomeVC" || className == "SearchVC" || className == "MyOrderOngoingVC" || className == "ProfileVC"{
            self.tabBarController?.tabBar.isHidden = false
        }else{
            self.tabBarController?.tabBar.isHidden = true
        }

        self.navigationController?.navigationBar.backgroundColor = color
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = color
        
        
    }
    
    func transparentNavigation(){
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    @objc func navigationButtonTapped(_ sender: AnyObject) {
        guard let buttonType = UINavigationBarButtonType(rawValue: sender.tag) else { return }
        switch buttonType {
        case .back: backButtonTapped()
        case .cross: crossButtonTapped()
        case .done: doneButtonTapped()
        case .add:addButtonTapped()
        case .location:locationButtonTapped()
        case .show: showButtonTapped()
        case .unFavourite: unFavouriteTapped()
        case .favourite: favouriteTapped()
        case .icCancel: cancelTapped()
        case .menu: menuTapped()
        case .cart: cartTapped()
            
        }
        //self.baseDelegate?.navigationBarButtonDidTapped(buttonType)
    }
    
    func backButtonTapped() {
        if subControllerName == "MyFavroiteVC"||subControllerName == "OfferVC"||subControllerName == "PaymentsVC"||subControllerName == "SettingsVC"||subControllerName == "HelpAboutUsFaQT_CVC"||subControllerName == "ContactUsVC"||subControllerName == "JustBiteCreditVC"{
            kAppDelegate.openDrawer()
            kAppDelegate.drawerController?.setDrawerState(.closed, animated: true)
        }else{
            if self.navigationController!.viewControllers.count > 1 {
                self.navigationController?.popViewController(animated: true)
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        }
     
    }
    
    func crossButtonTapped() {
        self.backButtonTapped()
    }
    
    func menuTapped() {
      kAppDelegate.openDrawer()
    }
    func cartTapped() {
        self.moveToNextViewC(name: "Home", withIdentifier: MyCartVC.className)
    }
    func doneButtonTapped() {
        
    }
    
    func addButtonTapped() {
        
    }
    
    func locationButtonTapped() {
        
    }
    
    func showButtonTapped() {
        
    }
    
    func unFavouriteTapped() {
        
    }
    
    func favouriteTapped() {
        
    }
    
    func cancelTapped() {
        self.backButtonTapped()
    }
    
    @available(iOS, deprecated: 9.0)
    func hideStatusBar(_ hide: Bool) {
        UIApplication.shared.setStatusBarHidden(hide, with: .none)
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.isHidden = hide
    }
    
    func hideNavigationBar(_ hide: Bool) {
        self.navigationController!.isNavigationBarHidden = hide
    }
    
    func goBackToIndex(_ backIndex: Int) {
        //self.goBackToIndex(backIndex, animated: true)
        
        kAppDelegate.openDrawer()
    }
    
    func goBackToIndex(_ backIndex: Int, animated animate: Bool) {
        if (self.navigationController!.viewControllers.count - backIndex) > 0 {
            let controller: BaseViewController = (self.navigationController!.viewControllers[(self.navigationController!.viewControllers.count - 1 - backIndex)] as! BaseViewController)
            self.navigationController!.popToViewController(controller, animated: animate)
        }
    }
    
    //Get indexpath for tableview
    func getIndexPathFor(sender : AnyObject, tblView : UITableView) -> NSIndexPath? {
        let rect : CGRect = sender.convert(sender.bounds, to: tblView)
        if let indexPath  = tblView.indexPathForRow(at: rect.origin) {
            return indexPath as NSIndexPath?;
        }
        return nil
    }
    
    func addDoneButtonOnKeyboard( textfield : UITextField) {
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: MAIN_SCREEN_WIDTH, height: 50))
        let doneToolbar: UIToolbar = UIToolbar(frame: rect)
        doneToolbar.barStyle = UIBarStyle.default
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title:"Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(tapDone(sender:)))
        doneToolbar.items = [done , flexSpace]
        doneToolbar.sizeToFit()
        textfield.inputAccessoryView = doneToolbar
    }
    
    @objc func tapDone(sender : UIButton) {
        view.endEditing(true)
    }
    
    
    //TODO: Move to next ViewController
    
    func moveToNextViewC(name:String,withIdentifier:String){
        let viewC = UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: withIdentifier)
        self.navigationController?.pushViewController(viewC, animated: true)
    }
    
    
    
    //TODO: Move to home root view controller
    func   moveToHomeVC(){
        
        let viewController = AppStoryboard.tabbarClass as! TabBarViewC
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.selectedIndex = 0
        navigationController.navigationBar.isHidden = true
        APPLICATION.keyWindow?.rootViewController = navigationController
    }
    
    
    //TODO: Move to next via root view controller
    func moveToNextViewCViaRoot(name:String,withIdentifier:String){
        let mainStoryboard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: withIdentifier)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.isHidden = true
        APPLICATION.keyWindow?.rootViewController = navigationController
    }
   
    //TODO: present to next ViewController
    
    func presentToNextViewC(name:String,withIdentifier:String){
        let viewC = UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: withIdentifier)
        self.navigationController?.present(viewC, animated: true, completion: nil)
    }
    
    
    
    
//    @objc func countrycodeList(_ sender : UIButton) {
//        let cont = UIStoryboard(name: "Auth", bundle: nil).instantiateViewController(withIdentifier: PinCodeVC.className ) as! PinCodeVC
//        cont.controller = self
//        cont.modalPresentationStyle = .custom
//        self.present(cont, animated: true, completion: nil)
//    }
//    
//    func saveResponse( response: SAuthModel){
//        USER_DEFAULTS.set(response.authToken, forKey:ConstantTexts.authToken.localizedString)
//        USER_DEFAULTS.set(response.result?.email, forKey:ConstantTexts.email.localizedString)
//        USER_DEFAULTS.set(response.result?._id, forKey:ConstantTexts.userID.localizedString)
//        USER_DEFAULTS.set(response.result?.mobile, forKey:ConstantTexts.mobile.localizedString)
//        USER_DEFAULTS.set(response.result?.countryCode, forKey:ConstantTexts.countryCode.localizedString)
//        USER_DEFAULTS.set(response.result?.imageURL, forKey:ConstantTexts.profileImage.localizedString)
//        USER_DEFAULTS.set(response.result?.name, forKey: ConstantTexts.userName.localizedString)
//        USER_DEFAULTS.set(response.result?.googleId, forKey:ConstantTexts.googleId.localizedString)
//        USER_DEFAULTS.set(response.result?.faceBookId, forKey: ConstantTexts.faceBookId.localizedString)
//    }
//    
//    func saveAddressResponse(response:AddressResponseModel ) {
//        USER_DEFAULTS.set(response.result, forKey:ConstantTexts.result.localizedString)
//    }
//    
//    func attributedStringColor(str: String, color: UIColor) -> String {
//        let stringValue = str
//        let changeColorString = [NSAttributedString.Key.foregroundColor: color]
//        let finalString = NSMutableAttributedString(string: stringValue, attributes: changeColorString)
//        let strng = finalString.string
//        return strng
//    }
    
    
   
    
    
    
}
