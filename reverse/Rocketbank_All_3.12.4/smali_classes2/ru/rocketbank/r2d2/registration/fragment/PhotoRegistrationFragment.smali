.class public abstract Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;
.super Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;
.source "PhotoRegistrationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotoRegistrationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoRegistrationFragment.kt\nru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,301:1\n1246#2:302\n1315#2,3:303\n1519#2,2:306\n624#2:308\n713#2,2:309\n49#3,2:311\n*E\n*S KotlinDebug\n*F\n+ 1 PhotoRegistrationFragment.kt\nru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment\n*L\n65#1:302\n65#1,3:303\n66#1,2:306\n126#1:308\n126#1,2:309\n131#1,2:311\n*E\n"
.end annotation


# static fields
.field public static final ANDROID_INTENT_EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final Companion:Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$Companion;

.field private static final KEY_PHOTO_PATH:Ljava/lang/String; = "KEY_PHOTO_PATH"

.field private static final REQUEST_TAKE_IMAGE:I = 0x22c

.field private static final REQUEST_TAKE_PHOTO:I = 0x22b

.field private static final TAG:Ljava/lang/String; = "PHOTO"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private externalFile:Lru/rocketbank/core/utils/fs/ExternalFile;

.field private isPhotoReady:Z

.field private final onGalleryClickListener:Landroid/view/View$OnClickListener;

.field private final onNextClicked:Landroid/view/View$OnClickListener;

.field private final onPhotoClickListener:Landroid/view/View$OnClickListener;

.field private final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->Companion:Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;-><init>()V

    .line 41
    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onPhotoClickListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onPhotoClickListener$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onGalleryClickListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onGalleryClickListener$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onGalleryClickListener:Landroid/view/View$OnClickListener;

    .line 45
    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onNextClicked$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$onNextClicked$1;-><init>(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onNextClicked:Landroid/view/View$OnClickListener;

    const/4 v0, 0x3

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->permissions:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$onGalleryClick(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onGalleryClick(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$onTakePhotoClick(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onTakePhotoClick(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setPhotoIsNeeded(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsNeeded()V

    return-void
.end method

.method private final checkPermissions()Z
    .locals 7

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->permissions:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 309
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 130
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 131
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v2, Lru/rocketbank/core/model/RequestPermissionEvent;

    .line 312
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v1, [Ljava/lang/String;

    .line 131
    invoke-direct {v2, v1}, Lru/rocketbank/core/model/RequestPermissionEvent;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return v3

    :cond_5
    return v4
.end method

.method private final createFile()Lru/rocketbank/core/utils/fs/ExternalFile;
    .locals 3

    .line 283
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFileManager()Lru/rocketbank/core/utils/fs/FileManager;

    move-result-object v0

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/core/utils/fs/FileManager;->createPublicImageFile(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 286
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->externalFile:Lru/rocketbank/core/utils/fs/ExternalFile;

    .line 288
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    return-object v0
.end method

.method private final getCameraIntent()Landroid/content/Intent;
    .locals 7

    .line 57
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->createFile()Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    .line 60
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extras.CAMERA_FACING"

    const/4 v3, 0x0

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

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

    .line 65
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 303
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 304
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 65
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 306
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/utils/fs/ExternalFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private final getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 84
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

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

    .line 88
    :cond_1
    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const-string v2, "_data"

    .line 89
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
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

    .line 88
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

.method private final onGalleryClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->openGallery()V

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final onTakePhotoClick(Landroid/view/View;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->checkPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f11028b

    .line 160
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showSnack(I)V

    return-void

    .line 164
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getCameraIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x22b

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v0, "buttonBottom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v1, "button"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catch_0
    move-exception p1

    .line 166
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final openGallery()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x22c

    .line 110
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 112
    :catch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0423\u043f\u0441, \u0447\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a =("

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private final setPhotoIsNeeded()V
    .locals 4

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->isPhotoReady:Z

    .line 238
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v3, 0x7f060200

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 239
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getImageRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v2, "button"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    iget-object v3, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onPhotoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const v3, 0x7f11028a

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 244
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const v3, 0x7f1101fe

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    iget-object v3, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onGalleryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v3, "buttonBottom"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v2, "buttonBottom"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const-string v2, "textViewHintBottom"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final setPhotoIsReady(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->isPhotoReady:Z

    .line 255
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 258
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    if-nez p1, :cond_1

    .line 259
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->externalFile:Lru/rocketbank/core/utils/fs/ExternalFile;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/utils/fs/ExternalFile;->getFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 260
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 264
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v1, "buttonBottom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v1, "buttonBottom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 266
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const v1, 0x7f110077

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 267
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    new-instance v1, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$setPhotoIsReady$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment$setPhotoIsReady$2;-><init>(Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v1, "button"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1102d6

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->onNextClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->textViewHintTop:Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getHintTopReadyTextRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->textViewHintBottom:Landroid/widget/TextView;

    const-string v0, "textViewHintBottom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final showPhoto()V
    .locals 1

    .line 118
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsNeeded()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsReady(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected abstract getHintTopReadyTextRes()I
.end method

.method protected abstract getImageRes()I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_2

    .line 202
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->checkPermissions()Z

    if-nez p3, :cond_0

    .line 203
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "data!!.data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    .line 204
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsReady(Ljava/lang/Boolean;)V

    return-void

    .line 206
    :cond_2
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->initView()V

    .line 208
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsNeeded()V

    return-void

    :pswitch_1
    if-ne p2, v1, :cond_3

    .line 213
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 214
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->checkPermissions()Z

    .line 215
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsReady(Ljava/lang/Boolean;)V

    return-void

    .line 217
    :cond_3
    iput-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->initView()V

    .line 219
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->setPhotoIsNeeded()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->isPhotoReady:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showPhoto()V

    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    invoke-super {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "KEY_PHOTO_PATH"

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 78
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getFileManager()Lru/rocketbank/core/utils/fs/FileManager;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/core/utils/fs/FileManager;->createFromPath(Ljava/lang/String;)Lru/rocketbank/core/utils/fs/ExternalFile;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->externalFile:Lru/rocketbank/core/utils/fs/ExternalFile;

    :cond_1
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onError(Ljava/lang/Throwable;)V

    .line 192
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v1, "buttonBottom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/ResultPermissionEvent;)V
    .locals 7

    const-string v0, "resultPermissionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v1, 0x7f11028b

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/events/ResultPermissionEvent;->getGrantResults()[I

    move-result-object p1

    if-nez p1, :cond_3

    .line 149
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x1

    array-length v3, p1

    move v4, v0

    move v5, v2

    :goto_0
    if-ge v4, v3, :cond_5

    aget v6, p1, v4

    if-nez v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    and-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    .line 154
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showSnack(I)V

    :cond_6
    return-void

    .line 143
    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showSnack(I)V

    return-void
.end method

.method public final onNextButtonClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->checkPermissions()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f11028b

    .line 176
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showSnack(I)V

    return-void

    .line 179
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->button:Landroid/widget/Button;

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    iget-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->buttonBottom:Landroid/widget/Button;

    const-string v1, "buttonBottom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    .line 184
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    const-string v1, "image"

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    const-string v0, "body"

    .line 187
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->execute(Lrx/Observable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_PHOTO_PATH"

    .line 279
    iget-object v1, p0, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->photoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/registration/fragment/GenericRegistrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->showPhoto()V

    .line 98
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/fragment/PhotoRegistrationFragment;->checkPermissions()Z

    return-void
.end method

.method protected abstract sendPhoto(Lokhttp3/MultipartBody$Part;)Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lrx/Observable<",
            "Lru/rocketbank/r2d2/registration/RegistrationStep;",
            ">;"
        }
    .end annotation
.end method
