.class public final Lru/rocketbank/r2d2/root/feed/FeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FeedAdapter.kt"

# interfaces
.implements Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;",
        ">;",
        "Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeedAdapter.kt\nru/rocketbank/r2d2/root/feed/FeedAdapter\n*L\n1#1,721:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

.field private bottomItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final delimiterStrategy:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;

.field private final feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

.field private final feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

.field private final isEmpty:Z

.field private final operationFormatter$delegate:Lkotlin/Lazy;

.field private searchMode:Z

.field private final selectedIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final stickyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/FeedAdapter;

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

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedPresenter;Lru/rocketbank/r2d2/root/feed/FeedModel;Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V
    .locals 1

    const-string v0, "cropCircleTransformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    iput-object p4, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    .line 47
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->selectedIds:Ljava/util/LinkedHashSet;

    .line 49
    sget-object p1, Lru/rocketbank/r2d2/root/feed/FeedAdapter$operationFormatter$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedAdapter$operationFormatter$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->operationFormatter$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lru/rocketbank/r2d2/root/feed/DayDelimiterStrategy;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/feed/DayDelimiterStrategy;-><init>()V

    check-cast p1, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->delimiterStrategy:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Lru/rocketbank/r2d2/utils/FeedItemCallback;

    move-object p2, p0

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3}, Lru/rocketbank/r2d2/utils/FeedItemCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/ArrayList;)V

    .line 65
    new-instance p2, Landroid/support/v7/util/SortedList;

    const-class p3, Lru/rocketbank/core/network/model/FeedItem;

    check-cast p1, Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p2, p3, p1}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    .line 552
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {p1}, Landroid/support/v7/util/SortedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isEmpty:Z

    return-void
.end method

.method public static final synthetic access$getFeedPresenter$p(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)Lru/rocketbank/r2d2/root/feed/FeedPresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    return-object p0
.end method

.method private final bindFriendOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/model/dto/operations/Friend;)V
    .locals 0

    .line 464
    iget-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    if-nez p3, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriendTransferType()Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object p2

    .line 469
    sget-object p3, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-eq p2, p3, :cond_5

    .line 472
    sget-object p3, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p3, p2}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->isOutgoing(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 473
    iget-object p2, p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->itemView:Landroid/view/View;

    const-string p3, "operationViewHolder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "operationViewHolder.itemView.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f110116

    invoke-virtual {p0, p2, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setMainActionView(Ljava/lang/String;)V

    .line 474
    iget-object p2, p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->itemView:Landroid/view/View;

    const-string p3, "operationViewHolder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "operationViewHolder.itemView.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f1103bd

    invoke-virtual {p0, p2, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setAdditionalAction(Ljava/lang/String;)V

    .line 475
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V

    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V

    .line 481
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$2;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V

    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOnAdditionalAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V

    return-void

    .line 486
    :cond_3
    sget-object p3, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {p3, p2}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->isIncoming(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 487
    iget-object p2, p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->itemView:Landroid/view/View;

    const-string p3, "operationViewHolder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "operationViewHolder.itemView.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f11008b

    invoke-virtual {p0, p2, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setMainActionView(Ljava/lang/String;)V

    .line 488
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$bindFriendOperation$3;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V

    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V

    return-void

    .line 494
    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setNoAction()V

    return-void
.end method

.method private final colorFromCurrency(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10da2

    if-eq v0, v1, :cond_2

    const v1, 0x13e5f

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "RUB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f06022e

    .line 389
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_2
    const-string v0, "EUR"

    .line 388
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f060090

    .line 390
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const p2, 0x7f06024c

    .line 391
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private final getItem(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 180
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object p1

    .line 183
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "stickyItem[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1

    .line 188
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "feedItems.get(position - stickySize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1
.end method

.method private final getOperation(I)Lru/rocketbank/core/model/AbstractOperation;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p1, :cond_1

    .line 295
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->operationFormatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/MoneyFormatter;

    return-object v0
.end method

.method private final isNotSameDayOperation(Ljava/util/Calendar;Lru/rocketbank/core/model/AbstractOperation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 307
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/AbstractOperation;->getHappenedAtCalendar()Ljava/util/Calendar;

    move-result-object p2

    const/4 v1, 0x5

    .line 309
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private final isToday(J)Z
    .locals 0

    .line 708
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    return p1
.end method

.method private final isYesterday(Ljava/util/Calendar;)Z
    .locals 5

    .line 713
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 714
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x1

    .line 717
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final onBindChosenCashBack(Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;)V
    .locals 2

    .line 500
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->setTitle(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;->getMonthlyMerchants()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const-string v1, "merchantOne"

    .line 503
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->setMerchantOne(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;->getMonthlyMerchants()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const-string v1, "merchantTwo"

    .line 508
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->setMerchantTwo(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;->getMonthlyMerchants()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const-string v0, "merchantThree"

    .line 513
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object p2

    invoke-virtual {p2}, Lru/rocketbank/core/model/dto/operations/Merchant;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;->setMerchantThree(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method private final onBindFriend(Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/FriendOperation;)V
    .locals 2

    .line 347
    invoke-virtual {p3}, Lru/rocketbank/core/model/FriendOperation;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setVisible(Z)V

    .line 348
    invoke-virtual {p3}, Lru/rocketbank/core/model/FriendOperation;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setTitle(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3}, Lru/rocketbank/core/model/FriendOperation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    const/4 v1, 0x1

    .line 351
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setButtons(Z)V

    .line 352
    invoke-virtual {p3}, Lru/rocketbank/core/model/FriendOperation;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setText(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p3}, Lru/rocketbank/core/model/FriendOperation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/dto/operations/Friend;->getUserpicUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setImage(Ljava/lang/String;)V

    .line 354
    iget-object v0, p1, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->itemView:Landroid/view/View;

    const-string v1, "friendViewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "friendViewHolder.itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f110116

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;

    invoke-direct {v1, p3, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$1;-><init>(Lru/rocketbank/core/model/FriendOperation;Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setOkOnAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 366
    iget-object p3, p1, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->itemView:Landroid/view/View;

    const-string v0, "friendViewHolder.itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "friendViewHolder.itemView.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f11032a

    invoke-virtual {p0, p3, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindFriend$2;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setCancelAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;->setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V

    :cond_3
    return-void
.end method

.method private final onBindMonthCashBack(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V
    .locals 2

    .line 376
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->clear()V

    .line 377
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->selectedIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setSelectedIds(Ljava/util/Set;)V

    .line 378
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 380
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->setTitle(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/MonthCashBack;->getMonthlyMerchants()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;

    const-string v0, "monthlyMerchant"

    .line 383
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    const-string v1, "monthlyMerchant.merchant"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/MonthlyMerchant;->getPercent()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;->addMerchant(Lru/rocketbank/core/model/dto/operations/Merchant;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onBindOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 4

    .line 396
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    .line 398
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriend()Lru/rocketbank/core/model/dto/operations/Friend;

    move-result-object v1

    .line 399
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v2

    .line 401
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {p1, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setContent(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setName(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V

    if-eqz v1, :cond_0

    .line 407
    invoke-direct {p0, p1, p3, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bindFriendOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/model/dto/operations/Friend;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setNoAction()V

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 414
    :cond_1
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getStatus()Ljava/lang/String;

    move-result-object p2

    .line 416
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getFriendTransferType()Lru/rocketbank/core/network/model/operation/FriendRequestType;

    move-result-object p3

    .line 417
    sget-object v1, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-virtual {v1, p3}, Lru/rocketbank/r2d2/widgets/OperationsUtils;->isIncoming(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lru/rocketbank/core/model/dto/operations/Operation;->STATUS_PENDING_VISIBLE:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    sget-object p2, Lru/rocketbank/core/network/model/operation/FriendRequestType;->TransferExternal:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-ne p2, p3, :cond_5

    .line 420
    :cond_3
    iget-object p2, p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->itemView:Landroid/view/View;

    const-string p3, "operationViewHolder.itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "operationViewHolder.itemView.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f11008b

    invoke-virtual {p0, p2, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string p3, "(this as java.lang.String).toUpperCase()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setMainActionView(Ljava/lang/String;)V

    .line 421
    new-instance p2, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindOperation$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindOperation$1;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;)V

    check-cast p2, Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setOnMainAction(Lru/rocketbank/r2d2/root/feed/viewholder/OnActionListener;)V

    goto :goto_0

    .line 427
    :cond_5
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setNoAction()V

    .line 432
    :cond_6
    :goto_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    double-to-float p3, v1

    float-to-double v1, p3

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "moneyData!!.currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v2, p3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method private final onBindPush(Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/PushOperation;)V
    .locals 2

    .line 519
    invoke-virtual {p3}, Lru/rocketbank/core/model/PushOperation;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setText(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p3}, Lru/rocketbank/core/model/PushOperation;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setImage(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p3}, Lru/rocketbank/core/model/PushOperation;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {p3}, Lru/rocketbank/core/model/PushOperation;->getTitle()Ljava/lang/String;

    move-result-object p3

    .line 525
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 526
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 527
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setButtons(Z)V

    const-string v1, "title"

    .line 528
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ref"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setMainAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setButtons(Z)V

    .line 531
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setTitle(Ljava/lang/String;)V

    .line 534
    :goto_0
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;->setFeedItem(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method private final onBindRocketRubles(Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    .line 436
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDisplayMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    .line 438
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setContent(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setName(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V

    .line 443
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setNoAction()V

    .line 445
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getOperationFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p3

    sget-object p3, Lru/rocketbank/core/utils/MoneyFormatter;->Companion:Lru/rocketbank/core/utils/MoneyFormatter$Companion;

    .line 1105
    invoke-static {}, Lru/rocketbank/core/utils/MoneyFormatter;->access$getCURRENCY_ROCKET$cp()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    .line 445
    invoke-virtual {p2, v0, v1, p3, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->formatAmount(DLjava/lang/String;Z)Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;

    move-result-object p2

    .line 446
    invoke-virtual {p2}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getAmountString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lru/rocketbank/core/utils/MoneyFormatter$FormattedAmount;->getSuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;->setAmount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onBindTaxGibdd(Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/TaxGibddPush;)V
    .locals 3

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->setButtons(Z)V

    .line 451
    invoke-virtual {p3}, Lru/rocketbank/core/model/TaxGibddPush;->getMerchant()Lru/rocketbank/core/model/dto/operations/Merchant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/rocketbank/core/model/dto/operations/Merchant;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 452
    :cond_1
    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->setImage(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p3}, Lru/rocketbank/core/model/TaxGibddPush;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->setText(Ljava/lang/String;)V

    .line 454
    iget-object v1, p1, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "viewHolder.itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f110287

    invoke-virtual {p0, v1, v2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;

    invoke-direct {v2, p1, v0, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;-><init>(Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;Ljava/lang/String;Lru/rocketbank/core/model/TaxGibddPush;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->setOkOnAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 457
    iget-object p3, p1, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->itemView:Landroid/view/View;

    const-string v0, "viewHolder.itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "viewHolder.itemView.context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110224

    invoke-virtual {p0, p3, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$2;

    invoke-direct {v0, p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$2;-><init>(Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/core/network/model/FeedItem;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->setCancelAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final showDayStartIfNeeded(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;ILru/rocketbank/core/model/AbstractOperation;)V
    .locals 7

    .line 314
    invoke-virtual {p3}, Lru/rocketbank/core/model/AbstractOperation;->getHappenedAtCalendar()Ljava/util/Calendar;

    move-result-object p3

    .line 315
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isTopOperation(I)Z

    move-result v2

    .line 316
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isToday(J)Z

    move-result v3

    .line 317
    invoke-direct {p0, p3}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isYesterday(Ljava/util/Calendar;)Z

    move-result v4

    add-int/lit8 v0, p2, -0x1

    .line 318
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getOperation(I)Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v1

    .line 319
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isTopOperation(I)Z

    move-result v5

    .line 320
    invoke-direct {p0, p3, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isNotSameDayOperation(Ljava/util/Calendar;Lru/rocketbank/core/model/AbstractOperation;)Z

    move-result v6

    .line 322
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->delimiterStrategy:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;

    move v1, p2

    invoke-interface/range {v0 .. v6}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->getShowMode(IZZZZZ)I

    move-result p2

    .line 330
    sget-object v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_TODAY()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->showToday()V

    return-void

    .line 332
    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_YESTERDAY()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->showYesterday(Ljava/util/Calendar;)V

    return-void

    .line 334
    :cond_1
    sget-object v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_WAITING()I

    move-result v0

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->showWaiting()V

    return-void

    .line 336
    :cond_2
    sget-object v0, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy;->Companion:Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/DelimiterStrategy$Companion;->getSHOW_DATE()I

    move-result v0

    if-ne p2, v0, :cond_3

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->showDayStart(Ljava/util/Calendar;)V

    return-void

    .line 338
    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->hideDayStart()V

    return-void
.end method


# virtual methods
.method public final addBottom(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 595
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getCleanSize()I

    move-result p1

    .line 596
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "loadingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 585
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public final addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 684
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/FeedItem;

    .line 685
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {p1}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    throw p1
.end method

.method public final addItems(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "top"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/FeedItem;

    .line 694
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V

    goto :goto_0

    .line 697
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {p1}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    .line 699
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    .line 700
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 703
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {p1}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {p2}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    throw p1
.end method

.method public final addTopItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 612
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemChanged(I)V

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 617
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final canDismiss(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final changeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 669
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 675
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 653
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 654
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 656
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clearTop()V
    .locals 1

    .line 661
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 662
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    return-object v0
.end method

.method public final getCleanSize()I
    .locals 2

    .line 550
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 538
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getCleanSize()I

    move-result v0

    .line 539
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_1

    .line 561
    iget-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->searchMode:Z

    if-eqz p1, :cond_0

    const p1, -0x21124111

    return p1

    :cond_0
    const p1, -0x4ff4b000

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 566
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getCleanSize()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 567
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1

    .line 570
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 572
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1

    .line 575
    :cond_4
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/FeedItem;->getType()I

    move-result p1

    return p1
.end method

.method public final getSearchMode()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->searchMode:Z

    return v0
.end method

.method public final getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(stringId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserModel()Lru/rocketbank/core/model/UserModel;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->isEmpty:Z

    return v0
.end method

.method public final isTopOperation(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 555
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getItemViewType(I)I

    move-result v0

    const v1, -0x21124111

    const v2, -0x4ff4b000

    if-nez p2, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 207
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Header must be at position 0, but "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 198
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Header must be at position 0, but "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 201
    :cond_3
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;

    .line 202
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->onBind(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V

    return-void

    .line 218
    :cond_4
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 221
    invoke-direct {p0, p1, p2, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->showDayStartIfNeeded(Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;ILru/rocketbank/core/model/AbstractOperation;)V

    :cond_5
    if-eq v0, v2, :cond_1f

    if-eq v0, v1, :cond_1d

    const/4 p2, 0x7

    if-eq v0, p2, :cond_1a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 288
    :pswitch_0
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    if-nez v4, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.TransferToSafeAccountOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v4, Lru/rocketbank/core/model/TransferToSafeAccountOperation;

    invoke-virtual {p1, v4, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->onBind(Lru/rocketbank/core/model/TransferToSafeAccountOperation;Lru/rocketbank/core/network/model/FeedItem;)V

    goto/16 :goto_1

    .line 242
    :pswitch_1
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;

    if-nez v4, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.NewPassportOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast v4, Lru/rocketbank/core/NewPassportOperation;

    invoke-virtual {p1, v4}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->onBind(Lru/rocketbank/core/NewPassportOperation;)V

    return-void

    .line 284
    :pswitch_2
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;

    if-nez v4, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.AndroidPayOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast v4, Lru/rocketbank/core/model/AndroidPayOperation;

    invoke-virtual {p1, v4, v3}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->onBind(Lru/rocketbank/core/model/AndroidPayOperation;Lru/rocketbank/core/network/model/FeedItem;)V

    return-void

    .line 265
    :pswitch_3
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;

    if-nez v4, :cond_9

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.OneTwoTripUidOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    check-cast v4, Lru/rocketbank/core/model/OneTwoTripUidOperation;

    invoke-virtual {p1, v4}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->onBind(Lru/rocketbank/core/model/OneTwoTripUidOperation;)V

    return-void

    .line 254
    :pswitch_4
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;

    if-nez v4, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    if-nez v4, :cond_b

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    check-cast v4, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindRocketRubles(Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    .line 270
    :pswitch_5
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;

    if-nez v4, :cond_c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.DeliveryOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast v4, Lru/rocketbank/core/model/DeliveryOperation;

    invoke-virtual {p1, v4}, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->onBind(Lru/rocketbank/core/model/DeliveryOperation;)V

    return-void

    .line 260
    :pswitch_6
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;

    if-nez v4, :cond_d

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.TariffOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    check-cast v4, Lru/rocketbank/core/model/TariffOperation;

    invoke-virtual {p1, v4}, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->onBind(Lru/rocketbank/core/model/TariffOperation;)V

    return-void

    .line 256
    :pswitch_7
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;

    if-nez v4, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    if-nez v4, :cond_f

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.TaxGibddPush"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    check-cast v4, Lru/rocketbank/core/model/TaxGibddPush;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindTaxGibdd(Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/TaxGibddPush;)V

    return-void

    .line 274
    :pswitch_8
    check-cast v4, Lru/rocketbank/core/model/discounts/Discount;

    .line 275
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;

    if-eqz v4, :cond_10

    .line 277
    iget-object p2, v4, Lru/rocketbank/core/model/discounts/Discount;->mainLink:Ljava/lang/String;

    const-string v0, "discountOperation.mainLink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->setAds(Ljava/lang/String;)V

    :cond_10
    if-nez v4, :cond_11

    .line 280
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-virtual {p1, v4}, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;->setDiscount(Lru/rocketbank/core/model/discounts/Discount;)V

    return-void

    .line 252
    :pswitch_9
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;

    if-nez v4, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    if-nez v4, :cond_13

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    check-cast v4, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindOperation(Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void

    .line 244
    :pswitch_a
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;

    if-nez v4, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    if-nez v4, :cond_15

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.MonthCashBack"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    check-cast v4, Lru/rocketbank/core/model/dto/operations/MonthCashBack;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindMonthCashBack(Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/MonthCashBack;)V

    return-void

    .line 250
    :pswitch_b
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;

    if-nez v4, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16
    if-nez v4, :cond_17

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.FriendOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    check-cast v4, Lru/rocketbank/core/model/FriendOperation;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindFriend(Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/FriendOperation;)V

    return-void

    .line 246
    :pswitch_c
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;

    if-nez v4, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    if-nez v4, :cond_19

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.PushOperation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    check-cast v4, Lru/rocketbank/core/model/PushOperation;

    invoke-direct {p0, p1, v3, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindPush(Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/PushOperation;)V

    return-void

    .line 248
    :cond_1a
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;

    if-nez v4, :cond_1b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b
    if-nez v4, :cond_1c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.MonthCashBackChosen"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    check-cast v4, Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;

    invoke-direct {p0, p1, v4}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindChosenCashBack(Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;Lru/rocketbank/core/model/dto/operations/MonthCashBackChosen;)V

    return-void

    :cond_1d
    if-eqz p2, :cond_1e

    .line 236
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Header must be at position 0, but "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1e
    :goto_1
    return-void

    :cond_1f
    if-eqz p2, :cond_20

    .line 227
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Header must be at position 0, but "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 230
    :cond_20
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;

    .line 231
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;->onBind(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, -0x4ff4b000

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const v1, -0x21124111

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const p2, 0x7f0c00b2

    .line 163
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901e6

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ProgressBar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/widget/ProgressBar;

    .line 165
    new-instance v1, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060032

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lme/zhanghai/android/materialprogressbar/IndeterminateProgressDrawable;->setTint(I)V

    .line 167
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    new-instance p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 158
    :pswitch_0
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    move-result-object p1

    .line 159
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 83
    :pswitch_1
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    move-result-object p1

    .line 84
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 153
    :pswitch_2
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-result-object p1

    .line 154
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;

    const-string v0, "apBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    invoke-direct {p2, p1, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemApBinding;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 138
    :pswitch_3
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p1

    .line 139
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    :pswitch_4
    const p2, 0x7f0c00bc

    .line 143
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 144
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/RocketRubleViewHolder;-><init>(Landroid/view/View;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 148
    :pswitch_5
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-result-object p1

    .line 149
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;

    const-string v0, "deliveryItemBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 133
    :pswitch_6
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-result-object p1

    .line 134
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;

    const-string v0, "salaryTariffsBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 128
    :pswitch_7
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p1

    .line 129
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const-string v1, "pushBinding"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    .line 123
    :pswitch_8
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;

    move-result-object p1

    .line 124
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/AdsViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    :pswitch_9
    const p2, 0x7f0c00b8

    .line 103
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OperationViewHolder;-><init>(Landroid/view/View;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto/16 :goto_0

    :pswitch_a
    const p2, 0x7f0c00b4

    .line 113
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/MonthCashBackViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedPresenter;Landroid/view/View;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto :goto_0

    .line 118
    :pswitch_b
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p1

    .line 119
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const-string v1, "pushBinding"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FriendViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto :goto_0

    .line 98
    :pswitch_c
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    move-result-object p1

    .line 99
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const-string v1, "pushBinding"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/PushViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/root/feed/FeedAdapter;Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v0, p1, v2}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;

    move-result-object p1

    .line 109
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    const-string v1, "binding"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/ChosenMonthCashBackViewHolder;-><init>(Ljp/wasabeef/glide/transformations/CropCircleTransformation;Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBinding;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto :goto_0

    :cond_2
    const p2, 0x7f0c01a4

    .line 93
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderStubViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderStubViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;Lru/rocketbank/r2d2/root/feed/FeedModel;Landroid/view/View;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    goto :goto_0

    :cond_3
    const p2, 0x7f0c014b

    .line 88
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedModel:Lru/rocketbank/r2d2/root/feed/FeedModel;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/HeaderViewHolder;-><init>(Lru/rocketbank/r2d2/root/feed/FeedModel;Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;Landroid/view/View;)V

    move-object p1, p2

    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    check-cast p2, Lru/rocketbank/core/network/model/FeedItem;

    const/16 v0, 0x8

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->removeItem(Lru/rocketbank/core/network/model/FeedItem;)V

    .line 647
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedPresenter:Lru/rocketbank/r2d2/root/feed/FeedPresenter;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->stashOperation(Lru/rocketbank/core/network/model/FeedItem;)V

    return-void
.end method

.method public final removeBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 603
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->getCleanSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 604
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final removeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 4

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 626
    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->stickyItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemRemoved(I)V

    .line 630
    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 632
    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, p1}, Landroid/support/v7/util/SortedList;->removeItemAt(I)Ljava/lang/Object;

    add-int/2addr p1, v0

    .line 633
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public final setBinding(Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->binding:Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    return-void
.end method

.method public final setRegularMode()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->searchMode:Z

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setSearchMode()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->searchMode:Z

    .line 75
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setSearchMode(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->searchMode:Z

    return-void
.end method

.method public final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter;->userModel:Lru/rocketbank/core/model/UserModel;

    return-void
.end method
