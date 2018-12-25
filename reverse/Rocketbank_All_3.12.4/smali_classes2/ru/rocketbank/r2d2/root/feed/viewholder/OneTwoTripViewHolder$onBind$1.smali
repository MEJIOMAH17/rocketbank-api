.class final Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;
.super Ljava/lang/Object;
.source "OneTwoTripViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->onBind(Lru/rocketbank/core/model/OneTwoTripUidOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $operation:Lru/rocketbank/core/model/OneTwoTripUidOperation;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;Lru/rocketbank/core/model/OneTwoTripUidOperation;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;->$operation:Lru/rocketbank/core/model/OneTwoTripUidOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 24
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "OneTwoTrip"

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;->$operation:Lru/rocketbank/core/model/OneTwoTripUidOperation;

    invoke-virtual {v1}, Lru/rocketbank/core/model/OneTwoTripUidOperation;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lru/rocketbank/r2d2/Utils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->getBinding()Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f110332

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnack(Landroid/view/View;I)V

    return-void
.end method
