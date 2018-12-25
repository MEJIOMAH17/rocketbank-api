.class public final Lru/rocketbank/r2d2/root/card/CardDetailAdapter;
.super Lru/rocketbank/r2d2/adapters/ParallaxAdapter;
.source "CardDetailAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/card/CardDetailAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardDetailAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardDetailAdapter.kt\nru/rocketbank/r2d2/root/card/CardDetailAdapter\n*L\n1#1,142:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/card/CardDetailAdapter$Companion;

.field public static final VIEW_TYPE_ACTION:I = 0x100001

.field public static final VIEW_TYPE_AP:I = 0x100003

.field public static final VIEW_TYPE_LIMIT:I = 0x100002

.field public static final VIEW_TYPE_SP:I = 0x100004


# instance fields
.field private final ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

.field private final sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->Companion:Lru/rocketbank/r2d2/root/card/CardDetailAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V
    .locals 1

    const-string v0, "parallaxData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;-><init>(Lru/rocketbank/r2d2/data/binding/parallax/ParallaxData;Landroid/view/View;I)V

    .line 17
    new-instance p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    .line 18
    new-instance p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    return-void
.end method

.method private final onAPCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0189

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    new-instance v0, Lru/rocketbank/r2d2/root/card/APViewHolder;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/card/APViewHolder;-><init>(Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object v0
.end method

.method private final onActionCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 120
    new-instance v0, Lru/rocketbank/r2d2/root/card/ActionViewHolder;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/card/ActionViewHolder;-><init>(Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object v0
.end method

.method private final onLimitCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 110
    new-instance v0, Lru/rocketbank/r2d2/root/card/LimitViewHolder;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/card/LimitViewHolder;-><init>(Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object v0
.end method

.method private final onSPCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    new-instance v0, Lru/rocketbank/r2d2/root/card/SPViewHolder;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/root/card/SPViewHolder;-><init>(Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object v0
.end method

.method private final onUpperCaseDelimitterCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 3

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 115
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;-><init>(Landroid/view/View;)V

    check-cast v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    return-object v0
.end method


# virtual methods
.method public final addAndroidPay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const v1, 0x100003

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 76
    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->ap:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "limitName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setSubtitle(Ljava/lang/String;)V

    const p1, 0x100002

    .line 68
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, p1, p2, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addLockButton(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    .line 55
    new-instance v1, Lru/rocketbank/r2d2/root/card/CardDetailAdapter$addLockButton$1;

    invoke-direct {v1, p3}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter$addLockButton$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 56
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setPayload(Ljava/lang/Object;)V

    const p1, 0x100001

    .line 58
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 60
    invoke-static {p0, v0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addSPay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const v1, 0x100004

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    .line 83
    iget-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->sp:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final addUpperCaseDelimiter(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    const/16 v1, 0xa

    .line 137
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setViewType(I)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 140
    invoke-static {p0, v0, p1, v1, v2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->addStaticItem$default(Lru/rocketbank/r2d2/adapters/ParallaxAdapter;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;IILjava/lang/Object;)V

    return-void
.end method

.method public final onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onBindCustomViewType(Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;II)V

    const/16 p2, 0xa

    if-eq p3, p2, :cond_c

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez p1, :cond_0

    .line 41
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 42
    :cond_1
    check-cast p1, Lru/rocketbank/r2d2/root/card/SPViewHolder;

    .line 43
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/card/SPViewHolder;->onBind(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_1
    if-nez p1, :cond_2

    .line 35
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 36
    :cond_3
    check-cast p1, Lru/rocketbank/r2d2/root/card/APViewHolder;

    .line 37
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/card/APViewHolder;->onBind(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_2
    if-nez p1, :cond_4

    .line 30
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 31
    :cond_5
    check-cast p1, Lru/rocketbank/r2d2/root/card/LimitViewHolder;

    .line 32
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    const-string p3, ""

    :cond_6
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, ""

    :cond_7
    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/card/LimitViewHolder;->onBind(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    if-nez p1, :cond_8

    .line 25
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 26
    :cond_9
    check-cast p1, Lru/rocketbank/r2d2/root/card/ActionViewHolder;

    .line 27
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_a

    const-string p3, ""

    :cond_a
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getPayload()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_b

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/card/ActionViewHolder;->onBind(Ljava/lang/String;I)V

    return-void

    :cond_c
    if-eqz p1, :cond_d

    .line 46
    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p2

    goto :goto_0

    :cond_d
    const/4 p2, 0x0

    :goto_0
    if-nez p1, :cond_e

    .line 47
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericDelimiterViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;

    if-eqz p2, :cond_f

    .line 48
    invoke-virtual {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_10

    :cond_f
    const-string p2, ""

    :cond_10
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericDelimiterViewHolder;->setText(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x100001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/adapters/ParallaxAdapter;->onCreateCustomViewType(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->onSPCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_1
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->onAPCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_2
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->onLimitCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_3
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->onActionCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailAdapter;->onUpperCaseDelimitterCreate(Landroid/view/ViewGroup;)Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x100001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
