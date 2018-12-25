.class public final Lio/card/payment/CardIOActivity;
.super Landroid/app/Activity;
.source "CardIOActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EXTRA_CAPTURED_CARD_IMAGE:Ljava/lang/String; = "io.card.payment.capturedCardImage"

.field public static final EXTRA_GUIDE_COLOR:Ljava/lang/String; = "io.card.payment.guideColor"

.field public static final EXTRA_HIDE_CARDIO_LOGO:Ljava/lang/String; = "io.card.payment.hideLogo"

.field public static final EXTRA_KEEP_APPLICATION_THEME:Ljava/lang/String; = "io.card.payment.keepApplicationTheme"

.field public static final EXTRA_LANGUAGE_OR_LOCALE:Ljava/lang/String; = "io.card.payment.languageOrLocale"

.field public static final EXTRA_NO_CAMERA:Ljava/lang/String; = "io.card.payment.noCamera"

.field public static final EXTRA_REQUIRE_CARDHOLDER_NAME:Ljava/lang/String; = "io.card.payment.requireCardholderName"

.field public static final EXTRA_REQUIRE_CVV:Ljava/lang/String; = "io.card.payment.requireCVV"

.field public static final EXTRA_REQUIRE_EXPIRY:Ljava/lang/String; = "io.card.payment.requireExpiry"

.field public static final EXTRA_REQUIRE_POSTAL_CODE:Ljava/lang/String; = "io.card.payment.requirePostalCode"

.field public static final EXTRA_RESTRICT_POSTAL_CODE_TO_NUMERIC_ONLY:Ljava/lang/String; = "io.card.payment.restrictPostalCodeToNumericOnly"

.field public static final EXTRA_RETURN_CARD_IMAGE:Ljava/lang/String; = "io.card.payment.returnCardImage"

.field public static final EXTRA_SCAN_EXPIRY:Ljava/lang/String; = "io.card.payment.scanExpiry"

.field public static final EXTRA_SCAN_INSTRUCTIONS:Ljava/lang/String; = "io.card.payment.scanInstructions"

.field public static final EXTRA_SCAN_OVERLAY_LAYOUT_ID:Ljava/lang/String; = "io.card.payment.scanOverlayLayoutId"

.field public static final EXTRA_SCAN_RESULT:Ljava/lang/String; = "io.card.payment.scanResult"

.field public static final EXTRA_SUPPRESS_CONFIRMATION:Ljava/lang/String; = "io.card.payment.suppressConfirmation"

.field public static final EXTRA_SUPPRESS_MANUAL_ENTRY:Ljava/lang/String; = "io.card.payment.suppressManual"

.field public static final EXTRA_SUPPRESS_SCAN:Ljava/lang/String; = "io.card.payment.suppressScan"

.field public static final EXTRA_UNBLUR_DIGITS:Ljava/lang/String; = "io.card.payment.unblurDigits"

.field public static final EXTRA_USE_CARDIO_LOGO:Ljava/lang/String; = "io.card.payment.useCardIOLogo"

.field public static final EXTRA_USE_PAYPAL_ACTIONBAR_ICON:Ljava/lang/String; = "io.card.payment.intentSenderIsPayPal"

.field public static final RESULT_CARD_INFO:I = 0xca8d10

.field public static final RESULT_CONFIRMATION_SUPPRESSED:I

.field public static final RESULT_ENTRY_CANCELED:I

.field public static final RESULT_SCAN_NOT_AVAILABLE:I

.field public static final RESULT_SCAN_SUPPRESSED:I

.field private static final TAG:Ljava/lang/String; = "CardIOActivity"

.field private static final VIBRATE_PATTERN:[J

.field private static lastResult:I = 0xca8d11

.field static markedCardImage:Landroid/graphics/Bitmap;

.field private static numActivityAllocations:I


# instance fields
.field private customOverlayLayout:Landroid/widget/LinearLayout;

.field private mCardScanner:Lio/card/payment/CardScanner;

.field private mDetectOnly:Z

.field private mDetectedCard:Lio/card/payment/CreditCard;

.field private mFrameOrientation:I

.field private mGuideFrame:Landroid/graphics/Rect;

.field private mLastDegrees:I

.field private mMainLayout:Landroid/widget/FrameLayout;

.field private mOverlay:Lio/card/payment/OverlayView;

.field mPreview:Lio/card/payment/Preview;

.field private mUIBar:Landroid/widget/RelativeLayout;

.field private manualEntryFallbackOrForced:Z

.field private orientationListener:Landroid/view/OrientationEventListener;

.field private suppressManualEntry:Z

.field private useApplicationTheme:Z

.field private waitingForPermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 240
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    .line 249
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_SCAN_NOT_AVAILABLE:I

    .line 254
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_SCAN_SUPPRESSED:I

    .line 259
    sget v0, Lio/card/payment/CardIOActivity;->lastResult:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/card/payment/CardIOActivity;->lastResult:I

    sput v0, Lio/card/payment/CardIOActivity;->RESULT_CONFIRMATION_SUPPRESSED:I

    const/4 v0, 0x4

    .line 278
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lio/card/payment/CardIOActivity;->VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x46
        0xa
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void
.end method

.method static synthetic access$000(Lio/card/payment/CardIOActivity;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->doOrientationChange(I)V

    return-void
.end method

.method static synthetic access$100(Lio/card/payment/CardIOActivity;)Lio/card/payment/OverlayView;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    return-object p0
.end method

.method static synthetic access$200(Lio/card/payment/CardIOActivity;)Lio/card/payment/CreditCard;
    .locals 0

    .line 58
    iget-object p0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    return-object p0
.end method

.method static synthetic access$202$79c748a(Lio/card/payment/CardIOActivity;)Lio/card/payment/CreditCard;
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    return-object v0
.end method

.method static synthetic access$300(Lio/card/payment/CardIOActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    return-void
.end method

.method public static canReadCardWithCamera()Z
    .locals 3

    const/4 v0, 0x0

    .line 705
    :try_start_0
    invoke-static {}, Lio/card/payment/Util;->hardwareSupported()Z

    move-result v1
    :try_end_0
    .catch Lio/card/payment/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 709
    :catch_0
    sget-object v1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException accessing Util.hardwareSupported()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    return v0
.end method

.method private checkCamera()V
    .locals 5

    const/4 v0, 0x1

    .line 435
    :try_start_0
    invoke-static {}, Lio/card/payment/Util;->hardwareSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    .line 437
    invoke-static {v1}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card.io"

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z
    :try_end_0
    .catch Lio/card/payment/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 442
    :catch_0
    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    .line 443
    invoke-static {v1}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card.io"

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, -0x4b

    .line 447
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 448
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 449
    iput-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void
.end method

.method private doOrientationChange(I)V
    .locals 4

    if-ltz p1, :cond_a

    .line 515
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 519
    :cond_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->getRotationalOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x168

    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0xf

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-lt p1, v1, :cond_5

    const/16 v1, 0x159

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x4b

    if-le p1, v1, :cond_3

    const/16 v1, 0x69

    if-ge p1, v1, :cond_3

    const/4 p1, 0x4

    .line 535
    iput p1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    move v0, v3

    goto :goto_1

    :cond_3
    const/16 v1, 0xa5

    if-le p1, v1, :cond_4

    const/16 v1, 0xc3

    if-ge p1, v1, :cond_4

    const/16 v0, 0xb4

    const/4 p1, 0x2

    .line 538
    iput p1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    goto :goto_1

    :cond_4
    const/16 v1, 0xff

    if-le p1, v1, :cond_6

    const/16 v1, 0x11d

    if-ge p1, v1, :cond_6

    const/4 p1, 0x3

    .line 541
    iput p1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    const/4 p1, 0x1

    .line 532
    iput p1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    :cond_6
    :goto_1
    if-ltz v0, :cond_9

    .line 543
    iget p1, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    if-eq v0, p1, :cond_9

    .line 544
    iget-object p1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    iget v1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-virtual {p1, v1}, Lio/card/payment/CardScanner;->setDeviceOrientation(I)V

    .line 545
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->setDeviceDegrees(I)V

    if-ne v0, v3, :cond_7

    const/high16 p1, 0x43870000    # 270.0f

    .line 547
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    return-void

    :cond_7
    if-ne v0, v2, :cond_8

    const/high16 p1, 0x42b40000    # 90.0f

    .line 549
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    return-void

    :cond_8
    int-to-float p1, v0

    .line 551
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->rotateCustomOverlay(F)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method public static getCapturedCardImage(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "io.card.payment.capturedCardImage"

    .line 739
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "io.card.payment.capturedCardImage"

    .line 743
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    .line 744
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 745
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v0, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private handleGeneralExceptionError(Ljava/lang/Exception;)V
    .locals 4

    .line 504
    sget-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    .line 505
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card.io"

    const-string v2, "Unknown exception, please post the stack trace as a GitHub issue"

    .line 507
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 508
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/16 v3, -0x4b

    .line 509
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 510
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    iput-boolean p1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void
.end method

.method private nextActivity()V
    .locals 5

    .line 816
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "io.card.payment.suppressConfirmation"

    const/4 v2, 0x0

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/card/payment/DataEntryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "io.card.payment.scanResult"

    .line 820
    iget-object v4, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 821
    iput-object v3, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 824
    :cond_0
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-static {v0, v1, v2}, Lio/card/payment/Util;->writeCapturedCardImageIfNecessary(Landroid/content/Intent;Landroid/content/Intent;Lio/card/payment/OverlayView;)V

    .line 826
    sget v0, Lio/card/payment/CardIOActivity;->RESULT_CONFIRMATION_SUPPRESSED:I

    .line 9069
    invoke-virtual {p0, v0, v1}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 9070
    sput-object v3, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 9071
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    return-void

    .line 828
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lio/card/payment/CardIOActivity$2;

    invoke-direct {v2, p0, v0}, Lio/card/payment/CardIOActivity$2;-><init>(Lio/card/payment/CardIOActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rotateCustomOverlay(F)V
    .locals 4

    .line 1055
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1057
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1059
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x0

    .line 1060
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x0

    .line 1061
    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 p1, 0x1

    .line 1062
    invoke-virtual {v2, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1064
    iget-object p1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public static sdkBuildDate()Ljava/util/Date;
    .locals 2

    .line 729
    new-instance v0, Ljava/util/Date;

    const-string v1, "03/17/2017 14:23:12 -0400"

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.5.1"

    return-object v0
.end method

.method private setDeviceDegrees(I)V
    .locals 4

    .line 891
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    .line 10046
    iget-object v0, v0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    const-string p1, "card.io"

    const-string v0, "surface view is null.. recovering... rotation might be weird."

    .line 894
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 899
    :cond_0
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/card/payment/CardScanner;->getGuideFrame(II)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    .line 902
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 903
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 904
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Lio/card/payment/OverlayView;->setGuideAndRotation(Landroid/graphics/Rect;I)V

    .line 905
    iput p1, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    return-void
.end method

.method private setFlashOn(Z)V
    .locals 1

    .line 914
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0, p1}, Lio/card/payment/CardScanner;->setFlashOn(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, p1}, Lio/card/payment/OverlayView;->setTorchOn(Z)V

    :cond_1
    return-void
.end method

.method private setPreviewLayout()V
    .locals 10

    .line 931
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    .line 932
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 933
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 937
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 939
    new-instance v2, Lio/card/payment/Preview;

    iget-object v4, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0}, Lio/card/payment/Preview;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    .line 940
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v4}, Lio/card/payment/Preview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 944
    new-instance v2, Lio/card/payment/OverlayView;

    invoke-static {p0}, Lio/card/payment/Util;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {v2, p0, v4}, Lio/card/payment/OverlayView;-><init>(Lio/card/payment/CardIOActivity;Z)V

    iput-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    .line 945
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lio/card/payment/OverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 948
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "io.card.payment.useCardIOLogo"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 949
    iget-object v5, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v5, v2}, Lio/card/payment/OverlayView;->setUseCardIOLogo(Z)V

    .line 951
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "io.card.payment.guideColor"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    or-int/2addr v1, v2

    if-eq v2, v1, :cond_0

    const-string v2, "card.io"

    const-string v5, "Removing transparency from provided guide color."

    .line 957
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setGuideColor(I)V

    goto :goto_0

    .line 962
    :cond_1
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setGuideColor(I)V

    .line 965
    :goto_0
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.hideLogo"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 966
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setHideCardIOLogo(Z)V

    .line 968
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.scanInstructions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 970
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v2, v1}, Lio/card/payment/OverlayView;->setScanInstructions(Ljava/lang/String;)V

    .line 975
    :cond_2
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 977
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 979
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x2

    .line 980
    invoke-virtual {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 981
    iget-object v5, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    .line 984
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 985
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xc

    .line 987
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 988
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 992
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 995
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 996
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 997
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 998
    sget-object v2, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    invoke-static {v2}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 999
    new-instance v2, Lio/card/payment/CardIOActivity$3;

    invoke-direct {v2, p0}, Lio/card/payment/CardIOActivity$3;-><init>(Lio/card/payment/CardIOActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1006
    iget-boolean v2, p0, Lio/card/payment/CardIOActivity;->useApplicationTheme:Z

    invoke-static {v0, v4, p0, v2}, Lio/card/payment/ui/ViewUtil;->styleAsButton(Landroid/widget/Button;ZLandroid/content/Context;Z)V

    .line 1007
    iget-boolean v2, p0, Lio/card/payment/CardIOActivity;->useApplicationTheme:Z

    if-nez v2, :cond_3

    const/high16 v2, 0x41600000    # 14.0f

    .line 1008
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    :cond_3
    const-string v2, "42dip"

    .line 1010
    invoke-static {v2, p0}, Lio/card/payment/ui/ViewUtil;->typedDimensionValueToPixelsInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 1013
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1014
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1015
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1016
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const-string v2, "16dip"

    const-string v7, "16dip"

    .line 1017
    invoke-static {v0, v2, v1, v7, v1}, Lio/card/payment/ui/ViewUtil;->setPadding(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "4dip"

    const-string v7, "4dip"

    const-string v8, "4dip"

    const-string v9, "4dip"

    .line 1019
    invoke-static {v0, v2, v7, v8, v9}, Lio/card/payment/ui/ViewUtil;->setMargins(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1026
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1027
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v5, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    .line 1029
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1030
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1033
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 1034
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1035
    iput-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    .line 1038
    :cond_5
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "io.card.payment.scanOverlayLayoutId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 1040
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    .line 1041
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1046
    iget-object v2, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1047
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/card/payment/CardIOActivity;->customOverlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1051
    :cond_6
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private showCameraScannerOverlay()V
    .locals 6

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 455
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 458
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 461
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 468
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 470
    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    .line 472
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "io.card.payment.cameraBypassTestMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.card.development"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal access of private extra"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "io.card.payment.CardScannerTester"

    .line 478
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    .line 479
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 481
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    iget v3, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/card/payment/CardScanner;

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    goto :goto_0

    .line 484
    :cond_2
    new-instance v0, Lio/card/payment/CardScanner;

    iget v1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    invoke-direct {v0, p0, v1}, Lio/card/payment/CardScanner;-><init>(Lio/card/payment/CardIOActivity;I)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    .line 486
    :goto_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->prepareScanner()V

    .line 488
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->setPreviewLayout()V

    .line 490
    new-instance v0, Lio/card/payment/CardIOActivity$1;

    invoke-direct {v0, p0, p0}, Lio/card/payment/CardIOActivity$1;-><init>(Lio/card/payment/CardIOActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 499
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->handleGeneralExceptionError(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final getTorchRect()Landroid/graphics/Rect;
    .locals 1

    .line 1076
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1079
    :cond_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0}, Lio/card/payment/OverlayView;->getTorchRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 648
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 653
    sget-object p1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string p2, "ignoring onActivityResult(RESULT_CANCELED) caused only when Camera Permissions are Denied in Android 23"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 654
    :cond_1
    sget p1, Lio/card/payment/CardIOActivity;->RESULT_CARD_INFO:I

    if-eq p2, p1, :cond_4

    sget p1, Lio/card/payment/CardIOActivity;->RESULT_ENTRY_CANCELED:I

    if-eq p2, p1, :cond_4

    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz p1, :cond_2

    goto :goto_1

    .line 664
    :cond_2
    iget-object p1, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_3

    .line 665
    iget-object p1, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    const-string p1, "io.card.payment.scanResult"

    .line 656
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 657
    sget-object p1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTRA_SCAN_RESULT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "io.card.payment.scanResult"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 659
    :cond_5
    sget-object p1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v0, "no data in EXTRA_SCAN_RESULT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    :goto_2
    invoke-virtual {p0, p2, p3}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 6070
    sput-object p1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 6071
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 686
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v0, :cond_0

    .line 687
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method final onCardDetected(Landroid/graphics/Bitmap;Lio/card/payment/DetectionInfo;)V
    .locals 7

    :try_start_0
    const-string v0, "vibrator"

    .line 773
    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 774
    sget-object v1, Lio/card/payment/CardIOActivity;->VIBRATE_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "card.io"

    const-string v2, "Exception while attempting to vibrate: "

    .line 779
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    const-string v0, "card.io"

    const-string v1, "Could not activate vibration feedback. Please add <uses-permission android:name=\"android.permission.VIBRATE\" /> to your application\'s manifest."

    .line 776
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_0
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->pauseScanning()V

    .line 783
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8046
    iget-boolean v0, p2, Lio/card/payment/DetectionInfo;->complete:Z

    if-eqz v0, :cond_1

    .line 8050
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 8051
    iget-object v2, p2, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    iget-object v2, p2, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v2, v2, v1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 8052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lio/card/payment/DetectionInfo;->prediction:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8054
    :cond_0
    iget-object v1, p2, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iput-object v0, v1, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    .line 8057
    iget-object v0, p2, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p2, Lio/card/payment/DetectionInfo;->expiry_month:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryMonth:I

    .line 8058
    iget-object v0, p2, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    iget v1, p2, Lio/card/payment/DetectionInfo;->expiry_year:I

    iput v1, v0, Lio/card/payment/CreditCard;->expiryYear:I

    .line 8060
    iget-object p2, p2, Lio/card/payment/DetectionInfo;->detectedCard:Lio/card/payment/CreditCard;

    .line 786
    iput-object p2, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 787
    iget-object p2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    invoke-virtual {p2, v0}, Lio/card/payment/OverlayView;->setDetectedCard(Lio/card/payment/CreditCard;)V

    .line 791
    :cond_1
    iget p2, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    const/high16 v0, 0x43d60000    # 428.0f

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    iget p2, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    goto :goto_2

    .line 795
    :cond_2
    iget-object p2, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    const v0, 0x3f933333    # 1.15f

    mul-float/2addr p2, v0

    goto :goto_3

    .line 793
    :cond_3
    :goto_2
    iget-object p2, p0, Lio/card/payment/CardIOActivity;->mGuideFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    const v0, 0x3f733333    # 0.95f

    mul-float/2addr p2, v0

    .line 798
    :goto_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 799
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 802
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    .line 801
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 803
    iget-object p2, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {p2, p1}, Lio/card/payment/OverlayView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 805
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->mDetectOnly:Z

    if-eqz p1, :cond_4

    .line 806
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 807
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-static {p2, p1, v0}, Lio/card/payment/Util;->writeCapturedCardImageIfNecessary(Landroid/content/Intent;Landroid/content/Intent;Lio/card/payment/OverlayView;)V

    .line 809
    sget p2, Lio/card/payment/CardIOActivity;->RESULT_SCAN_SUPPRESSED:I

    .line 8069
    invoke-virtual {p0, p2, p1}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 8070
    sput-object p1, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 8071
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    return-void

    .line 811
    :cond_4
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 329
    sget v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 331
    sput v0, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 335
    sget-object v0, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v3, "INTERNAL WARNING: There are %d (not 1) CardIOActivity allocations!"

    new-array v4, v1, [Ljava/lang/Object;

    sget v5, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    .line 337
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 335
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "io.card.payment.keepApplicationTheme"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lio/card/payment/CardIOActivity;->useApplicationTheme:Z

    .line 343
    iget-boolean v3, p0, Lio/card/payment/CardIOActivity;->useApplicationTheme:Z

    invoke-static {p0, v3}, Lio/card/payment/ui/ActivityHelper;->setActivityTheme(Landroid/app/Activity;Z)V

    .line 345
    invoke-static {v0}, Lio/card/payment/i18n/LocalizedStrings;->setLanguage(Landroid/content/Intent;)V

    const-string v3, "io.card.payment.suppressScan"

    .line 348
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lio/card/payment/CardIOActivity;->mDetectOnly:Z

    .line 356
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 358
    const-class v4, Lio/card/payment/CardIOActivity;

    invoke-static {v3, v4}, Lio/card/payment/Util;->manifestHasConfigChange(Landroid/content/pm/ResolveInfo;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 360
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v3, "io.card.payment.suppressManual"

    .line 364
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    if-eqz p1, :cond_2

    const-string v3, "io.card.payment.waitingForPermission"

    .line 368
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    :cond_2
    const-string p1, "io.card.payment.noCamera"

    .line 371
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "card.io"

    const-string v0, "EXTRA_NO_CAMERA set to true. Skipping camera."

    .line 372
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean v1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void

    .line 374
    :cond_3
    invoke-static {}, Lio/card/payment/CardScanner;->processorSupported()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "card.io"

    const-string v0, "Processor not Supported. Skipping camera."

    .line 375
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    return-void

    .line 379
    :cond_4
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v3, 0x0

    if-lt p1, v0, :cond_8

    .line 380
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    if-nez p1, :cond_b

    const-string p1, "android.permission.CAMERA"

    .line 381
    invoke-virtual {p0, p1}, Lio/card/payment/CardIOActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 384
    sget-object p1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v0, "permission denied to camera - requesting it"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-array p1, v1, [Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    aput-object v0, p1, v2

    .line 386
    iput-boolean v1, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    const/16 v0, 0xb

    .line 387
    invoke-virtual {p0, p1, v0}, Lio/card/payment/CardIOActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 389
    :cond_5
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->checkCamera()V

    .line 1405
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz p1, :cond_7

    .line 1427
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    if-eqz p1, :cond_6

    const-string p1, "card.io"

    const-string v0, "Camera not available and manual entry suppressed."

    .line 1428
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    sget p1, Lio/card/payment/CardIOActivity;->RESULT_SCAN_NOT_AVAILABLE:I

    .line 2069
    invoke-virtual {p0, p1, v3}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 2070
    sput-object v3, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 2071
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    :cond_6
    return-void

    .line 1409
    :cond_7
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->showCameraScannerOverlay()V

    return-void

    .line 394
    :cond_8
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->checkCamera()V

    .line 2415
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz p1, :cond_a

    .line 2427
    iget-boolean p1, p0, Lio/card/payment/CardIOActivity;->suppressManualEntry:Z

    if-eqz p1, :cond_9

    const-string p1, "card.io"

    const-string v0, "Camera not available and manual entry suppressed."

    .line 2428
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    sget p1, Lio/card/payment/CardIOActivity;->RESULT_SCAN_NOT_AVAILABLE:I

    .line 3069
    invoke-virtual {p0, p1, v3}, Lio/card/payment/CardIOActivity;->setResult(ILandroid/content/Intent;)V

    .line 3070
    sput-object v3, Lio/card/payment/CardIOActivity;->markedCardImage:Landroid/graphics/Bitmap;

    .line 3071
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->finish()V

    :cond_9
    return-void

    .line 2419
    :cond_a
    invoke-virtual {p0, v1}, Lio/card/payment/CardIOActivity;->requestWindowFeature(I)Z

    .line 2421
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->showCameraScannerOverlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception p1

    .line 398
    invoke-direct {p0, p1}, Lio/card/payment/CardIOActivity;->handleGeneralExceptionError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    .line 617
    sget v1, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lio/card/payment/CardIOActivity;->numActivityAllocations:I

    .line 619
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v1, 0x0

    .line 622
    invoke-direct {p0, v1}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    .line 624
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v1}, Lio/card/payment/CardScanner;->endScanning()V

    .line 626
    iput-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    .line 629
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method final onEdgeUpdate(Lio/card/payment/DetectionInfo;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v0, p1}, Lio/card/payment/OverlayView;->setDetectionInfo(Lio/card/payment/DetectionInfo;)V

    return-void
.end method

.method final onFirstFrame$13462e()V
    .locals 6

    .line 752
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    .line 7046
    iget-object v0, v0, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 753
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getRight()I

    move-result v5

    .line 755
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 754
    invoke-virtual {v1, v2}, Lio/card/payment/OverlayView;->setCameraPreviewRect(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x1

    .line 757
    iput v0, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    const/4 v1, 0x0

    .line 758
    invoke-direct {p0, v1}, Lio/card/payment/CardIOActivity;->setDeviceDegrees(I)V

    .line 760
    iget v1, p0, Lio/card/payment/CardIOActivity;->mFrameOrientation:I

    if-eq v0, v1, :cond_1

    const-string v0, "card.io"

    const-string v1, "the orientation of the scanner doesn\'t match the orientation of the activity"

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_1
    new-instance v0, Lio/card/payment/DetectionInfo;

    invoke-direct {v0}, Lio/card/payment/DetectionInfo;-><init>()V

    .line 7768
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mOverlay:Lio/card/payment/OverlayView;

    invoke-virtual {v1, v0}, Lio/card/payment/OverlayView;->setDetectionInfo(Lio/card/payment/DetectionInfo;)V

    return-void
.end method

.method protected final onPause()V
    .locals 1

    .line 602
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 604
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    .line 607
    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    .line 609
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->pauseScanning()V

    :cond_1
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 636
    iput-boolean p1, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    .line 637
    array-length p2, p3

    if-lez p2, :cond_0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 638
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->showCameraScannerOverlay()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 5

    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 564
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    if-nez v0, :cond_4

    .line 565
    iget-boolean v0, p0, Lio/card/payment/CardIOActivity;->manualEntryFallbackOrForced:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    return-void

    .line 570
    :cond_0
    invoke-static {}, Lio/card/payment/Util;->logNativeMemoryStats()V

    .line 572
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 573
    invoke-virtual {p0}, Lio/card/payment/CardIOActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 3130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const/4 v0, 0x1

    .line 576
    invoke-virtual {p0, v0}, Lio/card/payment/CardIOActivity;->setRequestedOrientation(I)V

    .line 577
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    const/4 v1, 0x0

    .line 3878
    iput-object v1, p0, Lio/card/payment/CardIOActivity;->mDetectedCard:Lio/card/payment/CreditCard;

    .line 3880
    iget-object v1, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    iget-object v2, p0, Lio/card/payment/CardIOActivity;->mPreview:Lio/card/payment/Preview;

    .line 5046
    iget-object v2, v2, Lio/card/payment/Preview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 4050
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 3880
    invoke-virtual {v1, v2}, Lio/card/payment/CardScanner;->resumeScanning(Landroid/view/SurfaceHolder;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3882
    iget-object v3, p0, Lio/card/payment/CardIOActivity;->mUIBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 580
    sget-object v1, Lio/card/payment/CardIOActivity;->TAG:Ljava/lang/String;

    const-string v2, "Could not connect to camera."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    .line 582
    invoke-static {v1}, Lio/card/payment/i18n/LocalizedStrings;->getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card.io"

    const-string v3, "error display: "

    .line 5872
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5874
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    invoke-direct {p0}, Lio/card/payment/CardIOActivity;->nextActivity()V

    goto :goto_0

    .line 586
    :cond_3
    invoke-direct {p0, v2}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    .line 589
    :goto_0
    iget v0, p0, Lio/card/payment/CardIOActivity;->mLastDegrees:I

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->doOrientationChange(I)V

    :cond_4
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "io.card.payment.waitingForPermission"

    .line 597
    iget-boolean v1, p0, Lio/card/payment/CardIOActivity;->waitingForPermission:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method final toggleFlash()V
    .locals 1

    .line 910
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    invoke-virtual {v0}, Lio/card/payment/CardScanner;->isFlashOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lio/card/payment/CardIOActivity;->setFlashOn(Z)V

    return-void
.end method

.method final triggerAutoFocus()V
    .locals 2

    .line 921
    iget-object v0, p0, Lio/card/payment/CardIOActivity;->mCardScanner:Lio/card/payment/CardScanner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/card/payment/CardScanner;->triggerAutoFocus(Z)V

    return-void
.end method
