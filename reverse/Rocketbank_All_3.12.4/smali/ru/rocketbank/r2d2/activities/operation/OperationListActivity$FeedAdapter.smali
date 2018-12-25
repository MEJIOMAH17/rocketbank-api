.class public final Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OperationListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/operation/OperationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomItem:Lru/rocketbank/core/network/model/FeedItem;

.field private final cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private final feedItems:Landroid/support/v7/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList<",
            "Lru/rocketbank/core/network/model/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;Ljp/wasabeef/glide/transformations/CropCircleTransformation;Landroid/view/LayoutInflater;)V
    .locals 2

    const-string v0, "operationListActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropCircleTransformation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 127
    new-instance p1, Landroid/support/v7/util/SortedList;

    const-class p2, Lru/rocketbank/core/network/model/FeedItem;

    new-instance p3, Lru/rocketbank/r2d2/utils/FeedItemCallback;

    move-object v0, p0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lru/rocketbank/r2d2/utils/FeedItemCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/ArrayList;)V

    check-cast p3, Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method private final getItem(I)Lru/rocketbank/core/network/model/FeedItem;
    .locals 1

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "feedItems.get(position )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/network/model/FeedItem;

    return-object p1
.end method

.method private final onBindOperation(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->hideDayStart()V

    .line 150
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getMoney()Lru/rocketbank/core/model/MoneyData;

    move-result-object v0

    .line 152
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getComment()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setContent(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p3}, Lru/rocketbank/core/model/dto/operations/Operation;->getDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setOperation(Lru/rocketbank/core/model/dto/operations/Operation;Lru/rocketbank/core/network/model/FeedItem;)V

    .line 157
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setNoAction()V

    .line 159
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->access$getOperationFormatter$p(Lru/rocketbank/r2d2/activities/operation/OperationListActivity;)Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getAmount()D

    move-result-wide v1

    double-to-float p3, v1

    float-to-double v1, p3

    invoke-virtual {v0}, Lru/rocketbank/core/model/MoneyData;->getCurrencyCode()Ljava/lang/String;

    move-result-object p3

    const-string v0, "moneyData.currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v2, p3, v0}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;->setAmount(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addBottom(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 194
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->getCleanSize()I

    move-result p1

    .line 195
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "loadingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method public final changeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 2

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 231
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/util/SortedList;->updateItemAt(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 217
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->clear()V

    .line 218
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clearTop()V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->notifyDataSetChanged()V

    .line 224
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity;->getOperationView()Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;->requestLayout()V

    return-void
.end method

.method public final getCleanSize()I
    .locals 1

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    .line 120
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    .line 164
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public final getOperationListActivity()Lru/rocketbank/r2d2/activities/operation/OperationListActivity;
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    return-object v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 119
    check-cast p1, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->getItem(I)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/FeedItem;->getOperation()Lru/rocketbank/core/model/AbstractOperation;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.dto.operations.Operation"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Lru/rocketbank/core/model/dto/operations/Operation;

    invoke-direct {p0, p1, p2, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->onBindOperation(Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/dto/operations/Operation;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00b8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 134
    new-instance p2, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->operationListActivity:Lru/rocketbank/r2d2/activities/operation/OperationListActivity;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/activities/operation/viewholder/OperationDetailViewHolder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-object p2
.end method

.method public final removeBottom()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->bottomItem:Lru/rocketbank/core/network/model/FeedItem;

    .line 202
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->getCleanSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 203
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final removeItem(Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 1

    const-string v0, "feedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->feedItems:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SortedList;->removeItemAt(I)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/operation/OperationListActivity$FeedAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
