.class public final Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;
.super Lru/rocketbank/r2d2/activities/StatusActivity;
.source "CloseSafeStatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/activities/StatusActivity<",
        "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;

.field private static final KEY_DATA:Ljava/lang/String; = "KEY_DATA"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->Companion:Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/StatusActivity;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->token:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getKEY_DATA$cp()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->KEY_DATA:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getOperation()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/GenericRequestResponseData;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lru/rocketbank/core/network/api/RocketAPI;->accountsClose(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    const-string v1, "rocketApi.accountsClose(token, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "intent.getParcelableExtra<SafeAccount>(KEY_DATA)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/core/model/SafeAccount;

    invoke-virtual {v0}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent.getParcelableExtr\u2026eAccount>(KEY_DATA).token"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->token:Ljava/lang/String;

    .line 30
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/StatusActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/safe/CloseSafeStatusActivity;->token:Ljava/lang/String;

    return-void
.end method
