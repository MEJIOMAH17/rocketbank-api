.class final Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;
.super Ljava/lang/Object;
.source "FeedAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedAdapter;->onBindTaxGibdd(Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;Lru/rocketbank/core/network/model/FeedItem;Lru/rocketbank/core/model/TaxGibddPush;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $icon:Ljava/lang/String;

.field final synthetic $push:Lru/rocketbank/core/model/TaxGibddPush;

.field final synthetic $viewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;Ljava/lang/String;Lru/rocketbank/core/model/TaxGibddPush;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$viewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$icon:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$push:Lru/rocketbank/core/model/TaxGibddPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 455
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$viewHolder:Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/root/feed/viewholder/TaxGibddViewHolder;->itemView:Landroid/view/View;

    const-string v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "viewHolder.itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$icon:Ljava/lang/String;

    const-string v3, "tax"

    iget-object v4, p0, Lru/rocketbank/r2d2/root/feed/FeedAdapter$onBindTaxGibdd$1;->$push:Lru/rocketbank/core/model/TaxGibddPush;

    invoke-virtual {v4}, Lru/rocketbank/core/model/TaxGibddPush;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->TAX:Lru/rocketbank/core/model/charge/ChargeType;

    goto :goto_0

    :cond_0
    sget-object v3, Lru/rocketbank/core/model/charge/ChargeType;->PENALTY:Lru/rocketbank/core/model/charge/ChargeType;

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Lru/rocketbank/core/model/charge/ChargeType;)V

    return-void
.end method
