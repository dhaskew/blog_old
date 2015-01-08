---
layout: post
title: Information Leakage, Images, and You
category: posts
tags: privacy
---

If you're anything like me, you have an active online life.  I personally share on Facebook, [Twitter], [Linked-in], [Github], as well as others.  I share pictures, text, links, videos, and all kinds of other stuff.  Its fun to participate in the dialog.  Its fun to take part in current events and social commentary.  But, if you're like me, then sharing has it limits.

There are a lot of crazy folks out there and you need to be careful what you share.  Different people have different opinions about what is appropriate to share and what isn't.  That's not the debate I want to get into here.  My tip for today is merely this: 

> Be careful that you only share what you mean to share!  Sharing information you did not intend as a part of sharing something else is called [Information Leakage].

Example:

I got into a [car wreck] a couple months ago. I posted [a picture] of the aftermath for all to see.  I didn't think about it at the time, but I would be revealing a couple things I didn't necessarily intend.

* The type and model of my phone.
* The location (GPS) the photo was taken.
* The date/time the GPS coordinates where recorded.

I don't care that you know I live in Atlanta, or that I use an iPhone 6 Plus.  Having said that, some of you might not want to give out such information.
 
Now that you are sufficiently scared, you're probably asking yourself .. "How do I view the information associated with my pictures to better understand what information I am revealing indirectly/accidently?"

On MacOSX, you would use the "mdls" command.

Example:

{% highlight bash %}

shell $ mdls ~/Desktop/car_wreck.jpg

kMDItemAcquisitionMake         = "Apple"
kMDItemAcquisitionModel        = "iPhone 6 Plus"
kMDItemAltitude                = 293.4618834080717
kMDItemAperture                = 2.275007206687806
kMDItemBitsPerSample           = 32
kMDItemColorSpace              = "RGB"
kMDItemContentCreationDate     = 2015-01-03 20:08:23 +0000
kMDItemContentModificationDate = 2015-01-03 20:08:23 +0000
kMDItemContentType             = "public.jpeg"
kMDItemContentTypeTree         = (
    "public.jpeg",
    "public.image",
    "public.data",
    "public.item",
    "public.content"
)
kMDItemCreator                 = "8.0.2"
kMDItemDateAdded               = 2015-01-03 20:08:36 +0000
kMDItemDisplayName             = "car_wreck.jpg"
kMDItemEXIFVersion             = "2.2.1"
kMDItemExposureMode            = 0
kMDItemExposureProgram         = 2
kMDItemExposureTimeSeconds     = 0.003184713375796179
kMDItemFlashOnOff              = 0
kMDItemFNumber                 = 2.2
kMDItemFocalLength             = 4.15
kMDItemFSContentChangeDate     = 2015-01-03 20:08:23 +0000
kMDItemFSCreationDate          = 2015-01-03 20:08:23 +0000
kMDItemFSCreatorCode           = ""
kMDItemFSFinderFlags           = 0
kMDItemFSHasCustomIcon         = (null)
kMDItemFSInvisible             = 0
kMDItemFSIsExtensionHidden     = 0
kMDItemFSIsStationery          = (null)
kMDItemFSLabel                 = 0
kMDItemFSName                  = "car_wreck.jpg"
kMDItemFSNodeCount             = (null)
kMDItemFSOwnerGroupID          = 20
kMDItemFSOwnerUserID           = 501
kMDItemFSSize                  = 131553
kMDItemFSTypeCode              = ""
kMDItemGPSDateStamp            = "2014:10:05"
kMDItemGPSDestBearing          = 67.72168284789645
kMDItemHasAlphaChannel         = 0
kMDItemImageDirection          = 247.7216828478964
kMDItemISOSpeed                = 32
kMDItemKind                    = "JPEG image"
kMDItemLastUsedDate            = 2015-01-03 20:09:15 +0000
kMDItemLatitude                = 33.85290833333333
kMDItemLogicalSize             = 131553
kMDItemLongitude               = -84.365495
kMDItemOrientation             = 0
kMDItemPhysicalSize            = 135168
kMDItemPixelCount              = 307200
kMDItemPixelHeight             = 480
kMDItemPixelWidth              = 640
kMDItemProfileName             = "sRGB IEC61966-2.1"
kMDItemRedEyeOnOff             = 0
kMDItemResolutionHeightDPI     = 72
kMDItemResolutionWidthDPI      = 72
kMDItemSpeed                   = 0
kMDItemTimestamp               = "12:25:21"
kMDItemUseCount                = 1
kMDItemUsedDates               = (
    "2015-01-03 05:00:00 +0000"
)
kMDItemWhereFroms              = (
    "http://www.aske.ws/images/car_wreck.jpg",
    "http://www.aske.ws/posts/car_wreck2.html"
)

{% endhighlight %}

As you can tell from the output, the metadata about a file can provide a wealth of imformation.  Now imagine you have a bunch of these types of images from a recent vacation.  Wouldn't it be great if you could query these pictures for GPS info and dates and times? Trick question, of course it would!


{% highlight bash %}
shell $ mdls -name KMDItemLatitude <filepath with wildcard>
kMDItemLatitude = (null)
kMDItemLatitude = 33.85290833333333
{% endhighlight %}

Note: In this example, Mac users could remove the GPS info with newer versions of preview.  Users of other platforms will need to consult the relevant documentation for appropriate alternatives.

Keep sharing, but share smarter.

I hope that helps!

[information leakage]: http://en.wikipedia.org/wiki/Information_leakage
[Twitter]: http://www.twitter.com/davidaskew
[Github]: http://www.github.com/dhaskew/
[Linked-In]: http://www.linkedin.com/in/davidaskew
[car wreck]: {% post_url 2014-10-06-car_wreck2 %}
[a picture]: {% post_url 2014-10-06-car_wreck2 %}


