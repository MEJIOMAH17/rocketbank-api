.class public final Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "DeliveryViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder\n*L\n1#1,43:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

.field private status:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    .line 16
    new-instance p1, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;)V

    .line 22
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/DeliveryItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    return-object v0
.end method

.method public final getData()Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;
    .locals 1

    .line 16
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/core/model/DeliveryOperation;)V
    .locals 3

    const-string v0, "deliveryOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;->getDescription()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/DeliveryOperation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedDeliveryHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/DeliveryOperation;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lru/rocketbank/core/model/DeliveryOperation;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->token:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lru/rocketbank/core/model/DeliveryOperation;->getStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->status:Ljava/lang/String;

    return-void
.end method

.method public final onDeliveryClicked()V
    .locals 7

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->status:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "status"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x539f09b5

    if-eq v1, v2, :cond_3

    const v2, -0x28af7669

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "itemView.context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->token:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v0, "token"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startPending$default(Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    const-string v1, "completed"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    sget-object v1, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity;->Companion:Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "itemView.context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/root/feed/viewholder/DeliveryViewHolder;->token:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v0, "token"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;->startCompleted$default(Lru/rocketbank/r2d2/root/delivery/DeliveryActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method
