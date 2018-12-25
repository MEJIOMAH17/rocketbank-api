.class public final Lru/rocketbank/r2d2/activities/DownloadActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "DownloadActivity.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;
.implements Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadActivity.kt\nru/rocketbank/r2d2/activities/DownloadActivity\n*L\n1#1,308:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

.field private static final KEY_KIND:Ljava/lang/String; = "KEY_KIND"

.field private static final KEY_MODE:Ljava/lang/String; = "KEY_MODE"

.field private static final KEY_PDF:Ljava/lang/String; = "KEY_PDF"

.field private static final KEY_TOKEN:Ljava/lang/String; = "KEY_TOKEN"

.field private static final REQUEST_CODE:I = 0x2904


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

.field private canShow:Z

.field private data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

.field private documentPath:Ljava/lang/String;

.field private errorText:Ljava/lang/String;

.field private headerManager:Lru/rocketbank/core/manager/HeaderManager;

.field private kind:Ljava/lang/String;

.field private loader:Lru/rocketbank/core/widgets/RocketLoader;

.field private mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

.field private pdfDownloadSubscription:Lrx/Subscription;

.field private final plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private referenceSubscription:Lrx/Subscription;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 40
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 57
    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-void
.end method

.method public static final synthetic access$getCanShow$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->canShow:Z

    return p0
.end method

.method public static final synthetic access$getData$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez p0, :cond_0

    const-string v0, "data"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getDocumentPath$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->documentPath:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "documentPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getErrorText$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->errorText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "errorText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getHeaderManager$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/manager/HeaderManager;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    if-nez p0, :cond_0

    const-string v0, "headerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/core/widgets/RocketLoader;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez p0, :cond_0

    const-string v0, "loader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMode$p(Lru/rocketbank/r2d2/activities/DownloadActivity;)Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;
    .locals 0

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-object p0
.end method

.method public static final synthetic access$processDownloadPdf(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)Lrx/Observable;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->processDownloadPdf(Ljava/lang/String;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCanShow$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->canShow:Z

    return-void
.end method

.method public static final synthetic access$setData$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    return-void
.end method

.method public static final synthetic access$setDocumentPath$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->documentPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setErrorText$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->errorText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setHeaderManager$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Lru/rocketbank/core/manager/HeaderManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    return-void
.end method

.method public static final synthetic access$setLoader$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Lru/rocketbank/core/widgets/RocketLoader;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    return-void
.end method

.method public static final synthetic access$setMode$p(Lru/rocketbank/r2d2/activities/DownloadActivity;Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    return-void
.end method

.method private final checkOrRequestPermission()Z
    .locals 4

    .line 220
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 222
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 223
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2904

    .line 222
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_0
    return v1
.end method

.method private final checkedLoad()V
    .locals 2

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 199
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->checkOrRequestPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->setPermissionStorageError()V

    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->download()V

    return-void
.end method

.method private final downloadPdf(Ljava/lang/String;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez v0, :cond_0

    const-string v1, "data"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getButtonsToolbar()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_1

    const-string v1, "loader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez v0, :cond_2

    const-string v1, "data"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    const v1, 0x7f11016e

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->pdfDownloadSubscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 175
    :cond_3
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->processDownloadPdf(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 176
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 177
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 178
    new-instance v0, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/DownloadActivity$downloadPdf$1;-><init>(Lru/rocketbank/r2d2/activities/DownloadActivity;)V

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->pdfDownloadSubscription:Lrx/Subscription;

    return-void
.end method

.method private final processDownloadPdf(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Lru/rocketbank/r2d2/activities/DownloadActivity$processDownloadPdf$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$processDownloadPdf$1;-><init>(Lru/rocketbank/r2d2/activities/DownloadActivity;Ljava/lang/String;)V

    check-cast v0, Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026nError(e)\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final setPermissionStorageError()V
    .locals 2

    const v0, 0x7f110191

    .line 248
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.error_storage_access)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->errorText:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_0

    const-string v1, "loader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketLoader;->setError()V

    return-void
.end method

.method private final showPdfView(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x2

    .line 231
    new-array v1, v0, [I

    .line 232
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v2, :cond_0

    const-string v3, "loader"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/RocketLoader;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 233
    aget v2, v1, v2

    iget-object v3, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v3, :cond_1

    const-string v4, "loader"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketLoader;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int v8, v2, v3

    const/4 v0, 0x1

    .line 234
    aget v0, v1, v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getStatusBarHeight()I

    move-result v1

    sub-int v9, v0, v1

    .line 235
    sget-object v4, Lru/rocketbank/r2d2/activities/PdfViewActivity;->Companion:Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object v7, p1

    invoke-virtual/range {v4 .. v10}, Lru/rocketbank/r2d2/activities/PdfViewActivity$Companion;->start(Landroid/content/Context;ZLjava/lang/String;IIZ)V

    .line 236
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->finish()V

    return-void
.end method

.method public static final startDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownload(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final startDownloadReference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownloadReference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final startDownloadSecured(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownloadSecured(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final animationEnd(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 254
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez p1, :cond_0

    const-string v0, "data"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->errorText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "errorText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez p1, :cond_2

    const-string v0, "data"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getButtonsToolbar()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void

    .line 258
    :cond_3
    iget-boolean p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->canShow:Z

    if-eqz p1, :cond_5

    .line 259
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->documentPath:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string v0, "documentPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity;->showPdfView(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final closeClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->finish()V

    return-void
.end method

.method public final download()V
    .locals 2

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    sget-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->loadReference()V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "url"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->downloadPdf(Ljava/lang/String;)V

    return-void
.end method

.method public final loadReference()V
    .locals 4

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->kind:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 99
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez v1, :cond_0

    const-string v2, "data"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v1

    const v2, 0x7f110201

    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez v1, :cond_1

    const-string v2, "data"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;->getButtonsToolbar()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 101
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v1, :cond_2

    const-string v2, "loader"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 102
    new-instance v1, Lru/rocketbank/core/model/references/RefBody;

    invoke-direct {v1, v0}, Lru/rocketbank/core/model/references/RefBody;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->referenceSubscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 104
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->token:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lru/rocketbank/core/network/api/PlasticsApi;->getReference(Ljava/lang/String;Lru/rocketbank/core/model/references/RefBody;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v1, 0x5a

    .line 105
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    .line 106
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 107
    new-instance v1, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$1;-><init>(Lru/rocketbank/r2d2/activities/DownloadActivity;)V

    check-cast v1, Lrx/functions/Func1;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 111
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 112
    new-instance v1, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/DownloadActivity$loadReference$$inlined$let$lambda$2;-><init>(Lru/rocketbank/r2d2/activities/DownloadActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->referenceSubscription:Lrx/Subscription;

    return-void

    :cond_4
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0c0051

    invoke-static {p1, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026t.activity_reference_pdf)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    .line 62
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const-string v0, "binding.loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    .line 63
    new-instance p1, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    .line 64
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->data:Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;

    if-nez v0, :cond_2

    const-string v1, "data"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setData(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfData;)V

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_MODE"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringExtra(KEY_MODE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->mode:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    sget-object v1, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;->MODE_REFERENCE:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion$Mode;

    if-ne v0, v1, :cond_4

    const-string v0, "KEY_TOKEN"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->token:Ljava/lang/String;

    const-string v0, "KEY_KIND"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->kind:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "KEY_PDF"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringExtra(KEY_PDF)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->url:Ljava/lang/String;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getHeaderManager()Lru/rocketbank/core/manager/HeaderManager;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->headerManager:Lru/rocketbank/core/manager/HeaderManager;

    .line 76
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->checkedLoad()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->referenceSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 93
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->pdfDownloadSubscription:Lrx/Subscription;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 94
    :cond_1
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onDestroy()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x2904

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 213
    array-length v0, p3

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->download()V

    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->setPermissionStorageError()V

    :cond_2
    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStart()V

    .line 87
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)V

    .line 88
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_1

    const-string v1, "loader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    return-void
.end method

.method protected final onStop()V
    .locals 3

    .line 80
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onStop()V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->binding:Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;->setListener(Lru/rocketbank/r2d2/data/binding/reference/ReferencePdfListener;)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DownloadActivity;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez v0, :cond_1

    const-string v2, "loader"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketLoader;->setOnEndAnimation(Lru/rocketbank/core/widgets/RocketLoader$OnEndAnimationListener;)V

    return-void
.end method

.method public final repeatClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/DownloadActivity;->checkedLoad()V

    return-void
.end method
