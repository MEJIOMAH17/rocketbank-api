.class public final Lru/rocketbank/r2d2/widgets/FingerprintDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FingerprintDialog.kt"

# interfaces
.implements Lru/rocketbank/core/manager/security/RocketFingerPrintListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;,
        Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

.field public static final TAG:Ljava/lang/String; = "fingerprint"

.field public static final TOUCH_STATE_KEY:Ljava/lang/String; = "touch_state"

.field private static final TOUCH_WAS_SUGGESTED_KEY:Ljava/lang/String; = "touch_was_suggested"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

.field private errorString:Ljava/lang/String;

.field private final fingerprintHandler:Landroid/os/Handler;

.field private loader:Lru/rocketbank/core/widgets/RocketLoader;

.field private loadingString:Ljava/lang/String;

.field private notExistsString:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private scanResult:Z

.field private swirlView:Lcom/mattprecious/swirl/SwirlView;

.field private touchFingerString:Ljava/lang/String;

.field private final touchManager:Lru/rocketbank/core/manager/TouchManager;

.field private tryAgainString:Ljava/lang/String;

.field private updateOkString:Ljava/lang/String;

.field private final updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 38
    new-instance v0, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    .line 40
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTouchManager()Lru/rocketbank/core/manager/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    .line 42
    new-instance v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;-><init>(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getData$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    return-object p0
.end method

.method public static final synthetic access$getPreferences$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Landroid/content/SharedPreferences;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->preferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const-string v0, "preferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScanResult$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->scanResult:Z

    return p0
.end method

.method public static final synthetic access$getSwirlView$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lcom/mattprecious/swirl/SwirlView;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-nez p0, :cond_0

    const-string v0, "swirlView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTouchFingerString$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchFingerString:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "touchFingerString"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTouchManager$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)Lru/rocketbank/core/manager/TouchManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    return-object p0
.end method

.method public static final synthetic access$setPreferences$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic access$setScanResult$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->scanResult:Z

    return-void
.end method

.method public static final synthetic access$setSwirlView$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;Lcom/mattprecious/swirl/SwirlView;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    return-void
.end method

.method public static final synthetic access$setTouchFingerString$p(Lru/rocketbank/r2d2/widgets/FingerprintDialog;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchFingerString:Ljava/lang/String;

    return-void
.end method

.method public static final checkFingerprint(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->checkFingerprint(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private final showCancelButton()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 113
    instance-of v1, v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method public static final showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showConfirmFingerPrintDialog(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;Ljava/lang/String;)Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method public static final showSuggestDialogIfNeed(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Z
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showSuggestDialogIfNeed(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/core/manager/TouchManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onAuthenticationError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "errString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-nez v0, :cond_0

    const-string v2, "swirlView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    invoke-virtual {v0, v2, v1}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xfac

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->showCancelButton()V

    .line 130
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 131
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-nez p1, :cond_2

    const-string v0, "swirlView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    invoke-virtual {p1, v0, v1}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 132
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 126
    :cond_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->showCancelButton()V

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 4

    .line 138
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-nez v0, :cond_0

    const-string v1, "swirlView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->notExistsString:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v3, "notExistsString"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->tryAgainString:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v3, "tryAgainString"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 143
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/String;)V
    .locals 3

    const-string v0, "helpString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/16 v1, 0x1d

    if-ne p1, v1, :cond_2

    .line 149
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez p1, :cond_0

    const-string p2, "loader"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->resetAnimation()V

    .line 150
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isLoading()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 151
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->refreshTouchToken()V

    .line 152
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 154
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->loadingString:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string v0, "loadingString"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    if-nez p1, :cond_3

    const-string v1, "swirlView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/mattprecious/swirl/SwirlView$State;->ERROR:Lcom/mattprecious/swirl/SwirlView$State;

    invoke-virtual {p1, v1, v0}, Lcom/mattprecious/swirl/SwirlView;->setState(Lcom/mattprecious/swirl/SwirlView$State;Z)V

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->errorString:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v2, "errorString"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getHelperText()Landroid/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 160
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->close()V

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->scanResult:Z

    .line 168
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->isError()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    if-nez p1, :cond_0

    const-string v0, "loader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketLoader;->setSuccess()V

    .line 170
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.app.AlertDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    .line 171
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 172
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateOkString:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v1, "updateOkString"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f1200c5

    .line 65
    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->setStyle(II)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->setCancelable(Z)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 71
    new-instance p1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200c5

    invoke-direct {p1, v0, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    move-result-object p1

    const-string v0, "FingerprintDialogBinding.inflate(inflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    if-nez p1, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->setData(Lru/rocketbank/r2d2/data/binding/dialogs/FingerprintDialogData;)V

    .line 75
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    if-nez p1, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    const-string v0, "binding.loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->loader:Lru/rocketbank/core/widgets/RocketLoader;

    .line 76
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    if-nez p1, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    const-string v0, "binding.swirlView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->swirlView:Lcom/mattprecious/swirl/SwirlView;

    const p1, 0x7f11019e

    .line 78
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.fingerprint_data_loading)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->loadingString:Ljava/lang/String;

    const p1, 0x7f11018d

    .line 79
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.error_occur)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->errorString:Ljava/lang/String;

    const p1, 0x7f11019f

    .line 80
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.fingerprint_update_ok)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateOkString:Ljava/lang/String;

    const p1, 0x7f11047a

    .line 81
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.touch_finger)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchFingerString:Ljava/lang/String;

    const p1, 0x7f11047c

    .line 82
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.touch_not_exists)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->notExistsString:Ljava/lang/String;

    const p1, 0x7f11031b

    .line 83
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.no_luck_try_again)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->tryAgainString:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->preferences:Landroid/content/SharedPreferences;

    .line 87
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->invalidateToken()V

    .line 88
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/core/manager/security/RocketFingerPrintListener;

    invoke-interface {p1, v0}, Lru/rocketbank/core/manager/TouchManager;->setListener(Lru/rocketbank/core/manager/security/RocketFingerPrintListener;)V

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->touchManager:Lru/rocketbank/core/manager/TouchManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lru/rocketbank/core/manager/TouchManager;->initialize(Z)Z

    .line 91
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->binding:Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    if-nez v0, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 93
    new-instance v2, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$onCreateDialog$1;-><init>(Lru/rocketbank/r2d2/widgets/FingerprintDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "dialog"

    .line 103
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onKeyNeedsForUpdate()V
    .locals 0

    return-void
.end method

.method public final show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->fingerprintHandler:Landroid/os/Handler;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->updateRunnable:Lru/rocketbank/r2d2/widgets/FingerprintDialog$UpdateRunnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
