.class public final Lru/rocketbank/r2d2/widgets/operations/OperationIconView;
.super Landroid/widget/FrameLayout;
.source "OperationIconView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/operations/OperationIconView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconView.kt\nru/rocketbank/r2d2/widgets/operations/OperationIconView\n*L\n1#1,244:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/operations/OperationIconView$Companion;

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public categoryGlymphView:Landroid/widget/TextView;

.field public image:Lde/hdodenhof/circleimageview/CircleImageView;

.field public operationIconTextView:Landroid/widget/TextView;

.field public statusImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->Companion:Lru/rocketbank/r2d2/widgets/operations/OperationIconView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0c01c4

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0902fd

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type de.hdodenhof.circleimageview.CircleImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    const v0, 0x7f090295

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    const v0, 0x7f09035a

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    const v0, 0x7f0900cd

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    return-void
.end method

.method private final setBackgroundWithText(Ljava/lang/String;IZ)V
    .locals 2

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "categoryGlymphView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "operationIconTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "operationIconTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez p1, :cond_3

    const-string v0, "image"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->getColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_4

    .line 183
    sget-object p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->Companion:Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;->getSTATUS_IN()I

    move-result p1

    goto :goto_0

    :cond_4
    sget-object p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->Companion:Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;->getSTATUS_OUT()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setStatusIcon(I)V

    return-void
.end method

.method private final setCategoryGlymph(J)V
    .locals 2

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "categoryGlymphView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "operationIconTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    sget-object v0, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez p2, :cond_2

    const-string v0, "categoryGlymphView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez p2, :cond_3

    const-string v0, "image"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->getColorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setFriendView(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/model/dto/operations/Friend;)V
    .locals 3

    .line 187
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Friend;->getUserpicUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setImage(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Friend;->getInitials()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 193
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "operation.displayMoney!!.currencyCode"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->colorFromCurrency(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, p2, p1, v0}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setBackgroundWithText(Ljava/lang/String;IZ)V

    return-void

    :cond_2
    return-void
.end method

.method private final setMoneyOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;
    .locals 4

    .line 68
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "operationIconTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v3, "categoryGlymphView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setImage(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->Companion:Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;->getSTATUS_NONE()I

    move-result v1

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setStatusIcon(I)V

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getContextType()Lru/rocketbank/core/network/model/operation/OperationContextType;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/widgets/operations/OperationIconView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/operation/OperationContextType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setOtherOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setCard(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setTransferCashIn(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_0

    .line 78
    :pswitch_2
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setCashIn(Lru/rocketbank/core/model/dto/operations/Operation;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, p1, v0}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setFriendView(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/model/dto/operations/Friend;)V

    .line 90
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCategoryGlymphView()Landroid/widget/TextView;
    .locals 2

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "categoryGlymphView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getImage()Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getOperationIconTextView()Landroid/widget/TextView;
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "operationIconTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getStatusImageView()Landroid/widget/ImageView;
    .locals 2

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "statusImageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setCard(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getLinkedCard()Lru/rocketbank/core/model/card/LinkedCard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Lru/rocketbank/core/model/card/LinkedCard;->getFeedIconUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez p1, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 98
    invoke-virtual {v0}, Lru/rocketbank/core/model/card/LinkedCard;->getFeedIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 99
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_1

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 103
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationCategory;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setCategoryGlymph(J)V

    return-void
.end method

.method public final setCashIn(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 143
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_2

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 147
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "currencyCode"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->colorFromCurrency(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, p1, v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setBackgroundWithText(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final setCategoryGlymphView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    return-void
.end method

.method public final setImage(Lde/hdodenhof/circleimageview/CircleImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez p1, :cond_0

    const-string v0, "image"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "categoryGlymphView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_3

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v1, :cond_4

    const-string v2, "image"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 209
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 210
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_5

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final setOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 1

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->isRocketRubleOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    return-void

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setMoneyOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;

    return-void
.end method

.method public final setOperationIconTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setOtherOperation(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "operationIconTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_1

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 114
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_3

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 117
    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 118
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationCategory;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setCategoryGlymph(J)V

    return-void

    :cond_5
    return-void
.end method

.method public final setRocketRubleOperation(Lru/rocketbank/core/model/dto/operations/Operation;)Landroid/view/View;
    .locals 4

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->operationIconTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "operationIconTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->categoryGlymphView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v3, "categoryGlymphView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setImage(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->Companion:Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder$Companion;->getSTATUS_NONE()I

    move-result v1

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setStatusIcon(I)V

    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_2

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 235
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_4

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 238
    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 239
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getCategory()Lru/rocketbank/core/model/dto/operations/OperationCategory;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/OperationCategory;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setCategoryGlymph(J)V

    .line 241
    :cond_7
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final setStatusIcon(I)V
    .locals 2

    .line 154
    sget v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->STATUS_NONE:I

    if-ne p1, v0, :cond_2

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 158
    :cond_2
    sget v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->STATUS_IN:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 159
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 161
    :cond_5
    sget v0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->STATUS_OUT:I

    if-ne p1, v0, :cond_8

    .line 162
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_7

    const-string v0, "statusImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    return-void
.end method

.method public final setStatusImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->statusImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTransferCashIn(Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_0

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lde/hdodenhof/circleimageview/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 128
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->image:Lde/hdodenhof/circleimageview/CircleImageView;

    if-nez v0, :cond_2

    const-string v1, "image"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void

    .line 132
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p1}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "currencyCode"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->colorFromCurrency(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, p1, v0, v1}, Lru/rocketbank/r2d2/widgets/operations/OperationIconView;->setBackgroundWithText(Ljava/lang/String;IZ)V

    return-void
.end method
