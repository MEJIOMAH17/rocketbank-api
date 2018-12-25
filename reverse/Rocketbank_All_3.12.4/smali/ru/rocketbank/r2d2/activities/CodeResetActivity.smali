.class public final Lru/rocketbank/r2d2/activities/CodeResetActivity;
.super Lru/rocketbank/r2d2/activities/AbstractActivity;
.source "CodeResetActivity.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/AbstractActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$makeCall(Lru/rocketbank/r2d2/activities/CodeResetActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->makeCall()V

    return-void
.end method

.method private final makeCall()V
    .locals 3

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel:88002000708"

    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    :try_start_0
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "\u041e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \"\u0422\u0435\u043b\u0435\u0444\u043e\u043d\""

    .line 41
    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->create(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lru/rocketbank/r2d2/fragments/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/CodeResetActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 19
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->setContentView(I)V

    const p1, 0x7f0903bb

    .line 21
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .line 22
    new-instance v0, Lru/rocketbank/r2d2/activities/CodeResetActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/CodeResetActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/CodeResetActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900a1

    .line 26
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Landroid/widget/Button;

    .line 27
    new-instance v0, Lru/rocketbank/r2d2/activities/CodeResetActivity$onCreate$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/CodeResetActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/activities/CodeResetActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorizationStorage()Lru/rocketbank/core/user/AuthorizationStorage;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Lru/rocketbank/core/user/AuthorizationStorage;->getState()Lru/rocketbank/core/realm/UserData;

    move-result-object p1

    .line 31
    sget-object v0, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    const v1, 0x7f0901cc

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/activities/CodeResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/core/utils/ImageHelper;->loadCover(Landroid/widget/ImageView;Lru/rocketbank/core/realm/UserData;)V

    return-void
.end method
