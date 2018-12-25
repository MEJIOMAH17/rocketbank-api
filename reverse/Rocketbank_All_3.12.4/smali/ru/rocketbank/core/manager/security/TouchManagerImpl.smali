.class public final Lru/rocketbank/core/manager/security/TouchManagerImpl;
.super Ljava/lang/Object;
.source "TouchManagerImpl.kt"

# interfaces
.implements Lru/rocketbank/core/manager/TouchManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchManagerImpl.kt\nru/rocketbank/core/manager/security/TouchManagerImpl\n*L\n1#1,167:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "TouchImpl"

.field private static final TOUCH_ENABLED:Ljava/lang/String; = "TOUCH_ENABLED"

.field private static final TOUCH_ID:Ljava/lang/String; = "TOUCH_ID"

.field private static final TOUCH_TOKEN:Ljava/lang/String; = "TOUCH_TOKEN"


# instance fields
.field private activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

.field private final androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

.field private final context:Landroid/content/Context;

.field private permissionID:Ljava/lang/String;

.field private final rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

.field private final touchIdInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private touchListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/rocketbank/core/manager/security/RocketFingerPrintListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->Companion:Lru/rocketbank/core/manager/security/TouchManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/network/api/RocketAPI;Landroid/content/Context;)V
    .locals 1

    const-string v0, "rocketAPI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    iput-object p2, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->context:Landroid/content/Context;

    .line 28
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 29
    new-instance p1, Lru/rocketbank/core/manager/security/Android23TouchProvider;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lru/rocketbank/core/manager/security/Android23TouchProvider;-><init>(Landroid/content/Context;)V

    check-cast p1, Lru/rocketbank/core/manager/security/TouchProvider;

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 28
    :goto_0
    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchIdInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    .line 61
    iget-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTouchIdInProgress$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchIdInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getTouchListener$p(Lru/rocketbank/core/manager/security/TouchManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 20
    iget-object p0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final clearListener()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/security/TouchProvider;->setListener(Ljava/lang/ref/WeakReference;)V

    return-void

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->close()V

    return-void

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final gotPermissions()Z
    .locals 5

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->permissionID:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "permissionID"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 95
    sget-object v2, Lru/rocketbank/core/manager/security/TouchManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final gotValidToken()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->gotValidToken()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFingerPrints()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->hasFingerprints()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(Z)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Lru/rocketbank/core/manager/security/TouchProvider;->setListener(Ljava/lang/ref/WeakReference;)V

    .line 51
    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/security/TouchProvider;->initialize(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final invalidateToken()V
    .locals 1

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->invalidateToken()V

    return-void

    :cond_0
    return-void
.end method

.method public final isAvailable()Z
    .locals 3

    .line 65
    sget-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "isAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 67
    sget-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isAvailable version ok"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lru/rocketbank/core/manager/security/TouchManagerImpl;->gotPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "isAvailable permitted ok"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->isReadyTouch()Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final isHardwareDetected()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->hasHardware()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLockScreenEnabled()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->androidTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->isLockScreenEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final refreshTouchToken()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/core/manager/security/TouchProvider;->gotValidToken()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchIdInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchIdInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1121
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->rocketAPI:Lru/rocketbank/core/network/api/RocketAPI;

    const-string v1, ""

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->requestTouchToken(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 1122
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 1123
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 1124
    new-instance v1, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;

    invoke-direct {v1, p0}, Lru/rocketbank/core/manager/security/TouchManagerImpl$makeTouchRequest$1;-><init>(Lru/rocketbank/core/manager/security/TouchManagerImpl;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    :cond_1
    return-void
.end method

.method public final requestPermission$3ef636dc(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->permissionID:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "permissionID"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public final setListener(Lru/rocketbank/core/manager/security/RocketFingerPrintListener;)V
    .locals 1

    const-string v0, "touchListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    .line 40
    iget-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->touchListener:Ljava/lang/ref/WeakReference;

    invoke-interface {p1, v0}, Lru/rocketbank/core/manager/security/TouchProvider;->setListener(Ljava/lang/ref/WeakReference;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setPermission(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->permissionID:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lru/rocketbank/core/manager/security/TouchManagerImpl;->activeTouchProvider:Lru/rocketbank/core/manager/security/TouchProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/core/manager/security/TouchProvider;->setToken(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
