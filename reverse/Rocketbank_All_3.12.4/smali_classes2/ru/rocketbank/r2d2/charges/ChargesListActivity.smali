.class public final Lru/rocketbank/r2d2/charges/ChargesListActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "ChargesListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChargesListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargesListActivity.kt\nru/rocketbank/r2d2/charges/ChargesListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,354:1\n624#2:355\n713#2,2:356\n624#2:358\n713#2,2:359\n881#2:361\n1176#2:362\n1201#2,3:363\n1204#2,3:373\n1246#2:390\n1315#2,3:391\n279#3,7:366\n38#4,12:376\n49#5,2:388\n*E\n*S KotlinDebug\n*F\n+ 1 ChargesListActivity.kt\nru/rocketbank/r2d2/charges/ChargesListActivity\n*L\n238#1:355\n238#1,2:356\n239#1:358\n239#1,2:359\n247#1:361\n248#1:362\n248#1,3:363\n248#1,3:373\n266#1:390\n266#1,3:391\n248#1,7:366\n251#1,12:376\n260#1,2:388\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

.field private static final KEY_CHARGES:Ljava/lang/String; = "KEY_CHARGES"

# The value of this static final field might be set in the static constructor
.field private static final KEY_CHARGE_TYPE:Ljava/lang/String; = "KEY_CHARGE_TYPE"

.field private static final KEY_CTC:Ljava/lang/String; = "KEY_CTC"

.field private static final KEY_DRIVER_LICENCE:Ljava/lang/String; = "KEY_DRIVER_LICENCE"

.field private static final KEY_INN:Ljava/lang/String; = "KEY_INN"

.field private static final KEY_LOAD_ACTUAL:Ljava/lang/String; = "KEY_LOAD_ACTUAL"

.field private static final KEY_RECYCLER_VIEW_STATE:Ljava/lang/String; = "KEY_RECYCLER_VIEW_STATE"

.field private static final KEY_UIN:Ljava/lang/String; = "KEY_UIN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private chargeFetchSubscription:Lrx/Subscription;

.field private chargeType:Lru/rocketbank/core/model/charge/ChargeType;

.field private charges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;"
        }
    .end annotation
.end field

.field private chargesAdapter:Lru/rocketbank/r2d2/charges/ChargesAdapter;

.field private savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field private sectionedRecyclerViewAdapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    .line 55
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargePaymentDetailsActivity$Companion;->getKEY_CHARGE_TYPE()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getCharges$p(Lru/rocketbank/r2d2/charges/ChargesListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getKEY_CHARGES$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGES:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CHARGE_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_CTC$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CTC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_DRIVER_LICENCE$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_DRIVER_LICENCE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_INN$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_INN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_LOAD_ACTUAL$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_LOAD_ACTUAL:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_RECYCLER_VIEW_STATE$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_RECYCLER_VIEW_STATE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_UIN$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_UIN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCharges$p(Lru/rocketbank/r2d2/charges/ChargesListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    return-void
.end method

.method private final nothingFound()V
    .locals 2

    .line 280
    sget v0, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    sget v0, Lru/rocketbank/r2d2/R$id;->nothingFound:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "nothingFound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    sget v0, Lru/rocketbank/r2d2/R$id;->cunningCat:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/CunningCat;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CunningCat;->resetAnimation()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final loader()Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;>;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CTC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_DRIVER_LICENCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_UIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_INN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_LOAD_ACTUAL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v0, :cond_0

    const-string v1, "chargeType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->tax()Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0}, Lru/rocketbank/core/network/api/RocketAPI;->penalty()Lrx/Observable;

    move-result-object v0

    :goto_0
    const-string v1, "when (chargeType) {\n    \u2026etApi.tax()\n            }"

    .line 217
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 222
    :cond_1
    iget-object v4, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v4, :cond_2

    const-string v5, "chargeType"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget-object v5, Lru/rocketbank/r2d2/charges/ChargesListActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v4}, Lru/rocketbank/core/model/charge/ChargeType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_1

    .line 225
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_2
    iget-object v4, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v4, v1, v0, v3, v2}, Lru/rocketbank/core/network/api/RocketAPI;->chargesFetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_1

    .line 224
    :pswitch_3
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v0, v5, v5, v3, v5}, Lru/rocketbank/core/network/api/RocketAPI;->chargesFetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_1

    .line 223
    :pswitch_4
    iget-object v3, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->rocketApi:Lru/rocketbank/core/network/api/RocketAPI;

    invoke-interface {v3, v1, v0, v5, v2}, Lru/rocketbank/core/network/api/RocketAPI;->chargesFetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    :goto_1
    const-string v1, "when (chargeType) {\n    \u2026, inn, uin)\n            }"

    .line 222
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 291
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->Companion:Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;->getREQUEST_CODE()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 293
    sget-object p1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->getKEY_CHARGE()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/charge/ChargeModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    :goto_0
    iget-object p2, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    new-instance p3, Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;

    invoke-direct {p3, p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onActivityResult$1;-><init>(Lru/rocketbank/core/model/charge/ChargeModel;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 295
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->updateData()V

    :cond_1
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 176
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0034

    .line 177
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->setContentView(I)V

    .line 178
    sget v0, Lru/rocketbank/r2d2/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 179
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.charge.ChargeType"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/model/charge/ChargeType;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    .line 181
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v0, :cond_2

    const-string v1, "chargeType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeType;->getActivityTitle()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->setTitle(I)V

    if-eqz p1, :cond_3

    .line 182
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    .line 184
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 185
    invoke-static {}, Lru/rocketbank/r2d2/helpers/UIHelper;->supportsViewElevation()Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lru/rocketbank/core/widgets/ItemShadowDecorator;

    const v3, 0x7f0801b7

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.NinePatchDrawable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v1, v2}, Lru/rocketbank/core/widgets/ItemShadowDecorator;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 189
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_RECYCLER_VIEW_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_9

    .line 191
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 206
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->showData()V

    return-void

    .line 192
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->showProgressDialog()V

    .line 193
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->loader()Lrx/Observable;

    move-result-object p1

    .line 194
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 195
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 196
    new-instance v0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/charges/ChargesListActivity;)V

    check-cast v0, Lrx/functions/Action1;

    .line 200
    new-instance v1, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;-><init>(Lru/rocketbank/r2d2/charges/ChargesListActivity;)V

    check-cast v1, Lrx/functions/Action1;

    .line 196
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeFetchSubscription:Lrx/Subscription;

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 300
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeFetchSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->unsubscribe(Lrx/Subscription;)V

    .line 301
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    .line 302
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager.SavedState"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 1

    .line 286
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 287
    sget v0, Lru/rocketbank/r2d2/R$id;->cunningCat:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/CunningCat;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/CunningCat;->resetAnimation()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_RECYCLER_VIEW_STATE:Ljava/lang/String;

    sget v1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->KEY_CHARGES:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final showData()V
    .locals 2

    .line 231
    new-instance v0, Lru/rocketbank/r2d2/charges/ChargesAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargesAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargesAdapter:Lru/rocketbank/r2d2/charges/ChargesAdapter;

    .line 232
    new-instance v0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargesAdapter:Lru/rocketbank/r2d2/charges/ChargesAdapter;

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {v0, v1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->sectionedRecyclerViewAdapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    .line 233
    invoke-virtual {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->updateData()V

    return-void
.end method

.method public final updateData()V
    .locals 8

    .line 237
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->charges:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 356
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lru/rocketbank/core/model/charge/ChargeModel;

    .line 238
    invoke-virtual {v5}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 359
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lru/rocketbank/core/model/charge/ChargeModel;

    .line 239
    iget-object v6, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v6, :cond_4

    const-string v7, "chargeType"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget-object v7, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY_TAX:Lru/rocketbank/core/model/charge/ChargeType;

    if-eq v6, v7, :cond_7

    invoke-virtual {v5}, Lru/rocketbank/core/model/charge/ChargeModel;->getDocument_type()Lru/rocketbank/core/model/charge/DocumentType;

    move-result-object v5

    invoke-virtual {v5}, Lru/rocketbank/core/model/charge/DocumentType;->getChargeType()Lru/rocketbank/core/model/charge/ChargeType;

    move-result-object v5

    iget-object v6, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargeType:Lru/rocketbank/core/model/charge/ChargeType;

    if-nez v6, :cond_5

    const-string v7, "chargeType"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    if-ne v5, v6, :cond_6

    goto :goto_3

    :cond_6
    move v5, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v3

    :goto_4
    if-eqz v5, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 360
    :cond_8
    check-cast v0, Ljava/util/List;

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 241
    invoke-direct {p0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->nothingFound()V

    return-void

    .line 243
    :cond_9
    sget v1, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    sget v1, Lru/rocketbank/r2d2/R$id;->nothingFound:I

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "nothingFound"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    check-cast v0, Ljava/lang/Iterable;

    .line 361
    new-instance v1, Lru/rocketbank/r2d2/charges/ChargesListActivity$updateData$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$updateData$$inlined$sortedByDescending$1;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 362
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 363
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 364
    move-object v3, v2

    check-cast v3, Lru/rocketbank/core/model/charge/ChargeModel;

    .line 248
    invoke-virtual {v3}, Lru/rocketbank/core/model/charge/ChargeModel;->getDocument_type()Lru/rocketbank/core/model/charge/DocumentType;

    move-result-object v3

    .line 366
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a

    .line 365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_a
    check-cast v5, Ljava/util/List;

    .line 373
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const-string v0, "$receiver"

    .line 249
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/SortedMap;

    .line 251
    check-cast v0, Ljava/util/Map;

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 383
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 385
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_6

    .line 387
    :cond_c
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 251
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargesAdapter:Lru/rocketbank/r2d2/charges/ChargesAdapter;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Lru/rocketbank/r2d2/charges/ChargesAdapter;->setCharges(Ljava/util/List;)V

    .line 254
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v4

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/model/charge/DocumentType;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 257
    new-instance v7, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-virtual {v6}, Lru/rocketbank/core/model/charge/DocumentType;->getTextStringRes()I

    move-result v6

    invoke-virtual {p0, v6}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v7, v3, v6}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_7

    .line 260
    :cond_e
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->sectionedRecyclerViewAdapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    if-eqz v0, :cond_10

    check-cast v2, Ljava/util/Collection;

    .line 389
    new-array v3, v4, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    check-cast v2, [Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    .line 260
    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V

    .line 261
    :cond_10
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->sectionedRecyclerViewAdapter:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    check-cast v2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 263
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->chargesAdapter:Lru/rocketbank/r2d2/charges/ChargesAdapter;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesAdapter;->notifyDataSetChanged()V

    .line 265
    :cond_11
    check-cast v1, Ljava/lang/Iterable;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 391
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 392
    check-cast v2, Lru/rocketbank/core/model/charge/ChargeModel;

    .line 266
    invoke-virtual {v2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDiscount_amount()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_9

    :cond_12
    invoke-virtual {v2}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getAmount()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_9

    :cond_13
    const-wide/16 v2, 0x0

    :goto_9
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 393
    :cond_14
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 267
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfDouble(Ljava/lang/Iterable;)D

    .line 269
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    .line 270
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    .line 272
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_15

    .line 273
    sget v0, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->savedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    :cond_15
    return-void
.end method
