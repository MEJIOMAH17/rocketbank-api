.class public final Lru/rocketbank/r2d2/activities/card/CardLimitActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "CardLimitActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardLimitActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardLimitActivity.kt\nru/rocketbank/r2d2/activities/card/CardLimitActivity\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,233:1\n27#2,3:234\n27#2,3:237\n27#2,3:240\n27#2,3:243\n*E\n*S KotlinDebug\n*F\n+ 1 CardLimitActivity.kt\nru/rocketbank/r2d2/activities/card/CardLimitActivity\n*L\n179#1,3:234\n190#1,3:237\n201#1,3:240\n212#1,3:243\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;

.field private static final EXTRA_CARD_TOKEN:Ljava/lang/String; = "CARD_TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

.field private final cardOperation$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final cardOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final cashAbroadOperation$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final cashAbroadOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final cashOperation$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final cashOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private currentLimits:Lru/rocketbank/core/network/model/SexyLimits;

.field private final data:Lru/rocketbank/r2d2/activities/card/CardLimits;

.field private getSubscription:Lrx/Subscription;

.field private final internetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final internetOperation$delegate:Lkotlin/properties/ReadWriteProperty;

.field public plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

.field private token:Ljava/lang/String;

.field private updateSubscribe:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "cashOperation"

    const-string v4, "getCashOperation()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "cashAbroadOperation"

    const-string v4, "getCashAbroadOperation()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "cardOperation"

    const-string v4, "getCardOperation()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "internetOperation"

    const-string v4, "getInternetOperation()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->Companion:Lru/rocketbank/r2d2/activities/card/CardLimitActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimits;->INSTANCE:Lru/rocketbank/r2d2/activities/card/CardLimits;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->data:Lru/rocketbank/r2d2/activities/card/CardLimits;

    .line 139
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashOperationListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashOperationListener$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 149
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cashAbroadOperationListener$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 159
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$internetListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$internetListener$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 169
    new-instance v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$cardOperationListener$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 179
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 234
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 236
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 190
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 237
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$2;

    invoke-direct {v1, v0, v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 239
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 201
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 240
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$3;

    invoke-direct {v1, v0, v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 242
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 212
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 243
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;

    invoke-direct {v1, v0, v0, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 245
    iput-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getActivityCardLimit$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;
    .locals 1

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez p0, :cond_0

    const-string v0, "activityCardLimit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCardOperationListener$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getCashAbroadOperationListener$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getCashOperationListener$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getData$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Lru/rocketbank/r2d2/activities/card/CardLimits;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->data:Lru/rocketbank/r2d2/activities/card/CardLimits;

    return-object p0
.end method

.method public static final synthetic access$getEXTRA_CARD_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->EXTRA_CARD_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getInternetListener$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static final synthetic access$setActivityCardLimit$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    return-void
.end method

.method public static final synthetic access$updateLimits(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateLimits(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final refreshLimits()V
    .locals 3

    .line 68
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_0

    const-string v1, "plasticApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->token:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v2, "token"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/PlasticsApi;->getSexyLimits(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 70
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$refreshLimits$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getSubscription:Lrx/Subscription;

    return-void
.end method

.method private final updateLimits(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;-><init>()V

    .line 109
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->currentLimits:Lru/rocketbank/core/network/model/SexyLimits;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;->setLimits(Lru/rocketbank/core/network/model/SexyLimits;)V

    .line 111
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->showProgressDialog()V

    .line 113
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v1, :cond_0

    const-string v2, "plasticApi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->token:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "token"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1, v2, v0}, Lru/rocketbank/core/network/api/PlasticsApi;->sendLimits(Ljava/lang/String;Lru/rocketbank/core/network/model/PlasticLimits$SexyCardLimits;)Lrx/Observable;

    move-result-object v0

    .line 114
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 115
    new-instance v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$updateLimits$1;-><init>(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateSubscribe:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCardOperation()Z
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getCashAbroadOperation()Z
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getCashOperation()Z
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getCurrentLimits()Lru/rocketbank/core/network/model/SexyLimits;
    .locals 1

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->currentLimits:Lru/rocketbank/core/network/model/SexyLimits;

    return-object v0
.end method

.method public final getGetSubscription()Lrx/Subscription;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getSubscription:Lrx/Subscription;

    return-object v0
.end method

.method public final getInternetOperation()Z
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    if-nez v0, :cond_0

    const-string v1, "plasticApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getUpdateSubscribe()Lrx/Subscription;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateSubscribe:Lrx/Subscription;

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->EXTRA_CARD_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "intent.getStringExtra(EXTRA_CARD_TOKEN)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->token:Ljava/lang/String;

    .line 39
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getPlasticApi()Lru/rocketbank/core/network/api/PlasticsApi;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    .line 41
    new-instance p1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060228

    .line 42
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-virtual {p1, v0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0c002a

    invoke-static {v0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "DataBindingUtil.setConte\u2026yout.activity_card_limit)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_0

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->data:Lru/rocketbank/r2d2/activities/card/CardLimits;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->setData(Lru/rocketbank/r2d2/activities/card/CardLimits;)V

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_1

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->card:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_3

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cash:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_5

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->cashAbroad:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperationListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_7

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->activityCardLimit:Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    if-nez v0, :cond_9

    const-string v1, "activityCardLimit"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->includeToolbar:Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "toolbar"

    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->hideProgressDialog()V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getSubscription:Lrx/Subscription;

    .line 101
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateSubscribe:Lrx/Subscription;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 102
    :cond_1
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateSubscribe:Lrx/Subscription;

    .line 104
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onPause()V

    return-void
.end method

.method protected final onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->showProgressDialog()V

    .line 64
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->refreshLimits()V

    return-void
.end method

.method public final setCardOperation(Z)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cardOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCashAbroadOperation(Z)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashAbroadOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCashOperation(Z)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->cashOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCurrentLimits(Lru/rocketbank/core/network/model/SexyLimits;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->currentLimits:Lru/rocketbank/core/network/model/SexyLimits;

    return-void
.end method

.method public final setGetSubscription(Lrx/Subscription;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->getSubscription:Lrx/Subscription;

    return-void
.end method

.method public final setInternetOperation(Z)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->internetOperation$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlasticApi(Lru/rocketbank/core/network/api/PlasticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->plasticApi:Lru/rocketbank/core/network/api/PlasticsApi;

    return-void
.end method

.method public final setUpdateSubscribe(Lrx/Subscription;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->updateSubscribe:Lrx/Subscription;

    return-void
.end method
