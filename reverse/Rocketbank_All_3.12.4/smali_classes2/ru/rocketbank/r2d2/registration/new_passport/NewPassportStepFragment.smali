.class public abstract Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;
.super Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;
.source "NewPassportStepFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportStepFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportStepFragment.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n10961#2,2:154\n10961#2,2:156\n1246#3:158\n1315#3,3:159\n1519#3,2:162\n*E\n*S KotlinDebug\n*F\n+ 1 NewPassportStepFragment.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment\n*L\n52#1,2:154\n61#1,2:156\n100#1:158\n100#1,3:159\n101#1,2:162\n*E\n"
.end annotation


# static fields
.field private static final CAMERA_PERMISSION_CODE:I = 0x87c

.field public static final Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment$Companion;

.field private static final GALLERY_PERMISSION_CODE:I = 0x87d


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private photoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->photoPath:Ljava/lang/String;

    return-void
.end method

.method private final createFile()Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 3

    .line 122
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFileManager()Lru/rocketbank/core/utils/fs/FileManager;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/utils/fs/FileManager;->createPublicImageFile(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->photoPath:Ljava/lang/String;

    return-object v0
.end method

.method private final getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 130
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 132
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const-string v2, "_data"

    .line 135
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final openCamera()V
    .locals 7

    .line 93
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->createFile()Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    .line 96
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 99
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "resInfoList"

    .line 100
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 160
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 100
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 162
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 105
    :cond_3
    :try_start_0
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_CAMERA:I

    invoke-virtual {p0, v1, v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final openGallery()V
    .locals 3

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    :try_start_0
    sget v1, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_GALLERY:I

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 116
    :catch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0423\u043f\u0441, \u0447\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a =("

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final showResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->showResult$App_prodRelease(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected getBottomButtonText()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f1103f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainButtonText()Ljava/lang/String;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v1, 0x7f11028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context!!.getString(R.string.make_photo)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getPhotoTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getStep()I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getPhotoTitle()Ljava/lang/String;

    move-result-object p2

    .line 77
    sget v0, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_AVATAR_FROM_GALLERY:I

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->showResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    return-void

    .line 84
    :cond_1
    sget p3, Lru/rocketbank/r2d2/utils/ImageUpload;->REQUEST_COVER_FROM_CAMERA:I

    if-ne p1, p3, :cond_2

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->photoPath:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->showResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onBottomButtonClicked()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->openGallery()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x87d

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onMainButtonClicked()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->openCamera()V

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x87c

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 156
    :pswitch_0
    array-length p1, p3

    :goto_0
    if-ge p2, p1, :cond_3

    aget v0, p3, p2

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getView()Landroid/view/View;

    move-result-object p1

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430 \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0443"

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->openGallery()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 154
    :pswitch_1
    array-length p1, p3

    :goto_1
    if-ge p2, p1, :cond_2

    aget v0, p3, p2

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->getView()Landroid/view/View;

    move-result-object p1

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430 \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u043a\u0430\u043c\u0435\u0440\u0435 \u0438\u043b\u0438 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0443"

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportStepFragment;->openCamera()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x87c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
