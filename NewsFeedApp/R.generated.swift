//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map(Locale.init)
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.segue` struct is generated, and contains static references to 4 view controllers.
  struct segue {
    /// This struct is generated for `BookmarkViewController`, and contains static references to 1 segues.
    struct bookmarkViewController {
      /// Segue identifier `bookmarkSourceSegue`.
      static let bookmarkSourceSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, BookmarkViewController, NewsDetailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "bookmarkSourceSegue")

      #if os(iOS) || os(tvOS)
      /// Optionally returns a typed version of segue `bookmarkSourceSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func bookmarkSourceSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, BookmarkViewController, NewsDetailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.bookmarkViewController.bookmarkSourceSegue, segue: segue)
      }
      #endif

      fileprivate init() {}
    }

    /// This struct is generated for `DailyFeedNewsController`, and contains static references to 2 segues.
    struct dailyFeedNewsController {
      /// Segue identifier `newsDetailSegue`.
      static let newsDetailSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, DailyFeedNewsController, NewsDetailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "newsDetailSegue")
      /// Segue identifier `newsSourceSegue`.
      static let newsSourceSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, DailyFeedNewsController, UIKit.UINavigationController> = Rswift.StoryboardSegueIdentifier(identifier: "newsSourceSegue")

      #if os(iOS) || os(tvOS)
      /// Optionally returns a typed version of segue `newsDetailSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func newsDetailSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, DailyFeedNewsController, NewsDetailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.dailyFeedNewsController.newsDetailSegue, segue: segue)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// Optionally returns a typed version of segue `newsSourceSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func newsSourceSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, DailyFeedNewsController, UIKit.UINavigationController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.dailyFeedNewsController.newsSourceSegue, segue: segue)
      }
      #endif

      fileprivate init() {}
    }

    /// This struct is generated for `NewsSearchViewController`, and contains static references to 1 segues.
    struct newsSearchViewController {
      /// Segue identifier `newsSearchSegue`.
      static let newsSearchSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, NewsSearchViewController, NewsDetailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "newsSearchSegue")

      #if os(iOS) || os(tvOS)
      /// Optionally returns a typed version of segue `newsSearchSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func newsSearchSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, NewsSearchViewController, NewsDetailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.newsSearchViewController.newsSearchSegue, segue: segue)
      }
      #endif

      fileprivate init() {}
    }

    /// This struct is generated for `NewsSourceViewController`, and contains static references to 1 segues.
    struct newsSourceViewController {
      /// Segue identifier `sourceUnwindSegue`.
      static let sourceUnwindSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, NewsSourceViewController, UIKit.UIViewController> = Rswift.StoryboardSegueIdentifier(identifier: "sourceUnwindSegue")

      #if os(iOS) || os(tvOS)
      /// Optionally returns a typed version of segue `sourceUnwindSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func sourceUnwindSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, NewsSourceViewController, UIKit.UIViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.newsSourceViewController.sourceUnwindSegue, segue: segue)
      }
      #endif

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `detailLabelColor`.
    static let detailLabelColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "detailLabelColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "detailLabelColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func detailLabelColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.detailLabelColor, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.file` struct is generated, and contains static references to 2 files.
  struct file {
    /// Resource file `IconTransitions.json`.
    static let iconTransitionsJson = Rswift.FileResource(bundle: R.hostingBundle, name: "IconTransitions", pathExtension: "json")
    /// Resource file `Settings.bundle`.
    static let settingsBundle = Rswift.FileResource(bundle: R.hostingBundle, name: "Settings", pathExtension: "bundle")

    /// `bundle.url(forResource: "IconTransitions", withExtension: "json")`
    static func iconTransitionsJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.iconTransitionsJson
      return fileResource.bundle.url(forResource: fileResource)
    }

    /// `bundle.url(forResource: "Settings", withExtension: "bundle")`
    static func settingsBundle(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.settingsBundle
      return fileResource.bundle.url(forResource: fileResource)
    }

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 13 images.
  struct image {
    /// Image `LaunchLogo`.
    static let launchLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "LaunchLogo")
    /// Image `back`.
    static let back = Rswift.ImageResource(bundle: R.hostingBundle, name: "back")
    /// Image `bookmark`.
    static let bookmark = Rswift.ImageResource(bundle: R.hostingBundle, name: "bookmark")
    /// Image `close`.
    static let close = Rswift.ImageResource(bundle: R.hostingBundle, name: "close")
    /// Image `country`.
    static let country = Rswift.ImageResource(bundle: R.hostingBundle, name: "country")
    /// Image `delete`.
    static let delete = Rswift.ImageResource(bundle: R.hostingBundle, name: "delete")
    /// Image `filter`.
    static let filter = Rswift.ImageResource(bundle: R.hostingBundle, name: "filter")
    /// Image `language`.
    static let language = Rswift.ImageResource(bundle: R.hostingBundle, name: "language")
    /// Image `logo`.
    static let logo = Rswift.ImageResource(bundle: R.hostingBundle, name: "logo")
    /// Image `placeholder`.
    static let placeholder = Rswift.ImageResource(bundle: R.hostingBundle, name: "placeholder")
    /// Image `search`.
    static let search = Rswift.ImageResource(bundle: R.hostingBundle, name: "search")
    /// Image `share`.
    static let share = Rswift.ImageResource(bundle: R.hostingBundle, name: "share")
    /// Image `sources`.
    static let sources = Rswift.ImageResource(bundle: R.hostingBundle, name: "sources")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "LaunchLogo", bundle: ..., traitCollection: ...)`
    static func launchLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.launchLogo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "back", bundle: ..., traitCollection: ...)`
    static func back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.back, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "bookmark", bundle: ..., traitCollection: ...)`
    static func bookmark(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.bookmark, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "close", bundle: ..., traitCollection: ...)`
    static func close(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.close, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "country", bundle: ..., traitCollection: ...)`
    static func country(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.country, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "delete", bundle: ..., traitCollection: ...)`
    static func delete(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.delete, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "filter", bundle: ..., traitCollection: ...)`
    static func filter(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.filter, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "language", bundle: ..., traitCollection: ...)`
    static func language(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.language, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "logo", bundle: ..., traitCollection: ...)`
    static func logo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "placeholder", bundle: ..., traitCollection: ...)`
    static func placeholder(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.placeholder, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "search", bundle: ..., traitCollection: ...)`
    static func search(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.search, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "share", bundle: ..., traitCollection: ...)`
    static func share(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.share, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "sources", bundle: ..., traitCollection: ...)`
    static func sources(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.sources, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 4 nibs.
  struct nib {
    /// Nib `BookmarkItemsCell`.
    static let bookmarkItemsCell = _R.nib._BookmarkItemsCell()
    /// Nib `DailyFeedDetailItemCell`.
    static let dailyFeedDetailItemCell = _R.nib._DailyFeedDetailItemCell()
    /// Nib `DailyFeedItemCell`.
    static let dailyFeedItemCell = _R.nib._DailyFeedItemCell()
    /// Nib `DailySourceItemCell`.
    static let dailySourceItemCell = _R.nib._DailySourceItemCell()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "BookmarkItemsCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.bookmarkItemsCell) instead")
    static func bookmarkItemsCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.bookmarkItemsCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "DailyFeedDetailItemCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.dailyFeedDetailItemCell) instead")
    static func dailyFeedDetailItemCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.dailyFeedDetailItemCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "DailyFeedItemCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.dailyFeedItemCell) instead")
    static func dailyFeedItemCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.dailyFeedItemCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "DailySourceItemCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.dailySourceItemCell) instead")
    static func dailySourceItemCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.dailySourceItemCell)
    }
    #endif

    static func bookmarkItemsCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> BookmarkItemsCell? {
      return R.nib.bookmarkItemsCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? BookmarkItemsCell
    }

    static func dailyFeedDetailItemCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailyFeedDetailItemCell? {
      return R.nib.dailyFeedDetailItemCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailyFeedDetailItemCell
    }

    static func dailyFeedItemCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailyFeedItemCell? {
      return R.nib.dailyFeedItemCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailyFeedItemCell
    }

    static func dailySourceItemCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailySourceItemCell? {
      return R.nib.dailySourceItemCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailySourceItemCell
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 5 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `BookmarkItemsCell`.
    static let bookmarkItemsCell: Rswift.ReuseIdentifier<BookmarkItemsCell> = Rswift.ReuseIdentifier(identifier: "BookmarkItemsCell")
    /// Reuse identifier `DailyFeedItemCell`.
    static let dailyFeedItemCell: Rswift.ReuseIdentifier<DailyFeedItemCell> = Rswift.ReuseIdentifier(identifier: "DailyFeedItemCell")
    /// Reuse identifier `DailySourceItemCell`.
    static let dailySourceItemCell: Rswift.ReuseIdentifier<DailySourceItemCell> = Rswift.ReuseIdentifier(identifier: "DailySourceItemCell")
    /// Reuse identifier `SourceCell`.
    static let sourceCell: Rswift.ReuseIdentifier<UIKit.UITableViewCell> = Rswift.ReuseIdentifier(identifier: "SourceCell")
    /// Reuse identifier `newsFooterView`.
    static let newsFooterView: Rswift.ReuseIdentifier<UIKit.UIView> = Rswift.ReuseIdentifier(identifier: "newsFooterView")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _BookmarkItemsCell.validate()
      try _DailyFeedDetailItemCell.validate()
    }

    struct _BookmarkItemsCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType, Rswift.Validatable {
      typealias ReusableType = BookmarkItemsCell

      let bundle = R.hostingBundle
      let identifier = "BookmarkItemsCell"
      let name = "BookmarkItemsCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> BookmarkItemsCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? BookmarkItemsCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "delete", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'delete' is used in nib 'BookmarkItemsCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    struct _DailyFeedDetailItemCell: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "DailyFeedDetailItemCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailyFeedDetailItemCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailyFeedDetailItemCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "back", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back' is used in nib 'DailyFeedDetailItemCell', but couldn't be loaded.") }
        if UIKit.UIImage(named: "share", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'share' is used in nib 'DailyFeedDetailItemCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }

    struct _DailyFeedItemCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = DailyFeedItemCell

      let bundle = R.hostingBundle
      let identifier = "DailyFeedItemCell"
      let name = "DailyFeedItemCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailyFeedItemCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailyFeedItemCell
      }

      fileprivate init() {}
    }

    struct _DailySourceItemCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = DailySourceItemCell

      let bundle = R.hostingBundle
      let identifier = "DailySourceItemCell"
      let name = "DailySourceItemCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> DailySourceItemCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? DailySourceItemCell
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if UIKit.UIImage(named: "LaunchLogo", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'LaunchLogo' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UITabBarController

      let bookmarkViewController = StoryboardViewControllerResource<BookmarkViewController>(identifier: "BookmarkViewController")
      let bundle = R.hostingBundle
      let initialNavigationController = StoryboardViewControllerResource<UIKit.UINavigationController>(identifier: "InitialNavigationController")
      let mainTabBarController = StoryboardViewControllerResource<UIKit.UITabBarController>(identifier: "MainTabBarController")
      let name = "Main"
      let newsDetailViewController = StoryboardViewControllerResource<NewsDetailViewController>(identifier: "NewsDetailViewController")
      let newsSourceViewController = StoryboardViewControllerResource<NewsSourceViewController>(identifier: "NewsSourceViewController")
      let sourceNavigationController = StoryboardViewControllerResource<UIKit.UINavigationController>(identifier: "SourceNavigationController")

      func bookmarkViewController(_: Void = ()) -> BookmarkViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: bookmarkViewController)
      }

      func initialNavigationController(_: Void = ()) -> UIKit.UINavigationController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: initialNavigationController)
      }

      func mainTabBarController(_: Void = ()) -> UIKit.UITabBarController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mainTabBarController)
      }

      func newsDetailViewController(_: Void = ()) -> NewsDetailViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: newsDetailViewController)
      }

      func newsSourceViewController(_: Void = ()) -> NewsSourceViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: newsSourceViewController)
      }

      func sourceNavigationController(_: Void = ()) -> UIKit.UINavigationController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: sourceNavigationController)
      }

      static func validate() throws {
        if UIKit.UIImage(named: "back", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'back' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "bookmark", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'bookmark' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "country", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'country' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "filter", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'filter' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "language", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'language' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "logo", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'logo' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "search", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'search' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "share", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'share' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "detailLabelColor", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'detailLabelColor' is used in storyboard 'Main', but couldn't be loaded.") }
        }
        if _R.storyboard.main().bookmarkViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'bookmarkViewController' could not be loaded from storyboard 'Main' as 'BookmarkViewController'.") }
        if _R.storyboard.main().initialNavigationController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'initialNavigationController' could not be loaded from storyboard 'Main' as 'UIKit.UINavigationController'.") }
        if _R.storyboard.main().mainTabBarController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mainTabBarController' could not be loaded from storyboard 'Main' as 'UIKit.UITabBarController'.") }
        if _R.storyboard.main().newsDetailViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'newsDetailViewController' could not be loaded from storyboard 'Main' as 'NewsDetailViewController'.") }
        if _R.storyboard.main().newsSourceViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'newsSourceViewController' could not be loaded from storyboard 'Main' as 'NewsSourceViewController'.") }
        if _R.storyboard.main().sourceNavigationController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'sourceNavigationController' could not be loaded from storyboard 'Main' as 'UIKit.UINavigationController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}