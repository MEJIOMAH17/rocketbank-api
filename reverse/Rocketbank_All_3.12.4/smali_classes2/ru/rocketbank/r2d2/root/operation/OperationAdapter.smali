.class public final Lru/rocketbank/r2d2/root/operation/OperationAdapter;
.super Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
.source "OperationAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/operation/OperationAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationAdapter.kt\nru/rocketbank/r2d2/root/operation/OperationAdapter\n*L\n1#1,300:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/root/operation/OperationAdapter$Companion;

.field public static final VIEW_TYPE_DESCRIPTION:I = 0x8000

.field public static final VIEW_TYPE_IN:I = 0x7000

.field public static final VIEW_TYPE_MILES:I = 0x1000

.field public static final VIEW_TYPE_MILES_COMPENSATED:I = 0x2000

.field public static final VIEW_TYPE_OPERATION_ACTIONS:I = 0xe000

.field public static final VIEW_TYPE_OPERATION_MAP:I = 0x3000

.field public static final VIEW_TYPE_OUT:I = 0x6000

.field public static final VIEW_TYPE_PARENT_OPERATION:I = 0xa000

.field public static final VIEW_TYPE_SHOP_ITEM:I = 0x9000

.field public static final VIEW_TYPE_SOURCE:I = 0x4000

.field public static final VIEW_TYPE_TAG:I = 0x5000


# instance fields
.field private final adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

.field private final operationFormatter$delegate:Lkotlin/Lazy;

.field private final operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/operation/OperationAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "operationFormatter"

    const-string v4, "getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->Companion:Lru/rocketbank/r2d2/root/operation/OperationAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V
    .locals 1

    const-string v0, "operationPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parallaxData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2, p3, p4}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    .line 29
    sget-object p1, Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;->INSTANCE:Lru/rocketbank/r2d2/root/operation/OperationAdapter$operationFormatter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationFormatter$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    return-void
.end method

.method private final getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationFormatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method private final onBindOperation(Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    .line 186
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p2

    .line 188
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    .line 189
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    .line 191
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setContent(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setName(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 199
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setNoAction()V

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    :cond_0
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriendTransferType()Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object p3

    .line 207
    sget-object v1, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {v1, p3}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->isIncoming(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lru/rocketbank/core/model/dto/operations/Operation;->STATUS_PENDING_VISIBLE:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->TransferExternal:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-ne v0, p3, :cond_3

    .line 211
    :cond_2
    new-instance p3, Lru/rocketbank/r2d2/root/operation/OperationAdapter$onBindOperation$1;

    invoke-direct {p3}, Lru/rocketbank/r2d2/root/operation/OperationAdapter$onBindOperation$1;-><init>()V

    check-cast p3, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setNoAction()V

    .line 222
    :cond_4
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p3

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p2}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    const-string v2, "moneyData!!.currencyCode"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, p2, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addActions(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const v1, 0xe000

    .line 79
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 80
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 82
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addCompensated(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x2000

    .line 95
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 96
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addCompensationToDo(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x1000

    .line 87
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 88
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addDescription(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const v1, 0x8000

    .line 103
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 104
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, p1, p2, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addIn()V
    .locals 4

    .line 40
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x7000

    .line 41
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 43
    invoke-static {p0, v0, v1, v2, v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addMap(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x3000

    .line 71
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 72
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 74
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addOut()V
    .locals 4

    .line 47
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x6000

    .line 48
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 50
    invoke-static {p0, v0, v1, v2, v3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addParentOperationItem(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "parentOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const v1, 0xa000

    .line 118
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 119
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 120
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addShopItem(Lru/rocketbank/core/network/model/ContextShopItem;)V
    .locals 3

    const-string v0, "shopItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const v1, 0x9000

    .line 111
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 112
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 113
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addSource(Lru/rocketbank/r2d2/root/operation/data/SourceViewData;)V
    .locals 3

    const-string v0, "sourceViewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x4000

    .line 55
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 56
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 58
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addTag(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0x5000

    .line 63
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 64
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 66
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final getAdapterData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    return-object v0
.end method

.method public final onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V
    .locals 2

    const/16 v0, 0x1000

    if-eq p3, v0, :cond_14

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_12

    const/16 v0, 0x3000

    const/4 v1, 0x0

    if-eq p3, v0, :cond_f

    const/16 v0, 0x4000

    if-eq p3, v0, :cond_d

    const/16 v0, 0x5000

    if-eq p3, v0, :cond_b

    const/16 v0, 0x6000

    if-eq p3, v0, :cond_a

    const v0, 0x8000

    if-eq p3, v0, :cond_8

    const v0, 0x9000

    if-eq p3, v0, :cond_6

    const v0, 0xa000

    if-eq p3, v0, :cond_2

    const v0, 0xe000

    if-eq p3, v0, :cond_0

    .line 181
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V

    return-void

    .line 135
    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;->onBind()V

    :cond_1
    return-void

    .line 177
    :cond_2
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;

    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v1, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, p2, v1}, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->onBindOperation(Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_5
    return-void

    .line 172
    :cond_6
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;

    if-eqz p1, :cond_7

    .line 173
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;->bind()V

    :cond_7
    return-void

    .line 167
    :cond_8
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;

    if-eqz p1, :cond_9

    .line 168
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->bind()V

    :cond_9
    return-void

    :cond_a
    return-void

    .line 150
    :cond_b
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    if-eqz p1, :cond_c

    .line 152
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->onBind()V

    :cond_c
    return-void

    .line 130
    :cond_d
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;

    if-eqz p1, :cond_e

    .line 131
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;->onBind()V

    :cond_e
    return-void

    .line 140
    :cond_f
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    if-eqz p1, :cond_11

    .line 142
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object v1

    :cond_10
    check-cast v1, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v1, :cond_11

    .line 144
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;->onBind(Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    :cond_11
    return-void

    .line 162
    :cond_12
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;

    if-eqz p1, :cond_13

    .line 163
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;->bind()V

    :cond_13
    return-void

    .line 157
    :cond_14
    check-cast p1, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;

    if-eqz p1, :cond_15

    .line 158
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;->bind()V

    :cond_15
    return-void
.end method

.method public final onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 284
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    :sswitch_0
    const p2, 0x7f0c012f

    .line 254
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 255
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/ActionsViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_1
    const p2, 0x7f0c00b8

    .line 279
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 280
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/OperationParentViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_2
    const p2, 0x7f0c01af

    .line 274
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 275
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/ShopItemViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_3
    const p2, 0x7f0c0132

    .line 269
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 270
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_4
    const p2, 0x7f0c0133

    .line 229
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 230
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/IncommingOperation;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/operation/vh/IncommingOperation;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_5
    const p2, 0x7f0c0137

    .line 234
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 235
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_6
    const p2, 0x7f0c0131

    .line 239
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 240
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-direct {p2, p1, v0, v1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_7
    const p2, 0x7f0c0138

    .line 244
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 245
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/SourceViewHolder;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_8
    const p2, 0x7f0c0134

    .line 249
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 250
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->adapterData:Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/operation/vh/MapViewHolder;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_9
    const p2, 0x7f0c0136

    .line 264
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 265
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/MilesCompensated;-><init>(Landroid/view/View;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_a
    const p2, 0x7f0c012e

    .line 259
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 260
    new-instance p2, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/OperationAdapter;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/operation/vh/MilesToCompensate;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_9
        0x3000 -> :sswitch_8
        0x4000 -> :sswitch_7
        0x5000 -> :sswitch_6
        0x6000 -> :sswitch_5
        0x7000 -> :sswitch_4
        0x8000 -> :sswitch_3
        0x9000 -> :sswitch_2
        0xa000 -> :sswitch_1
        0xe000 -> :sswitch_0
    .end sparse-switch
.end method
