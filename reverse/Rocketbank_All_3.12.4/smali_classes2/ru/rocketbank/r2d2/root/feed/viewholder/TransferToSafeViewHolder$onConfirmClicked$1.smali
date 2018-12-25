.class final Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;
.super Ljava/lang/Object;
.source "TransferToSafeViewHolder.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->onConfirmClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $subscription:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->$subscription:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->access$getCallback$p(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;)Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    iget-object v0, v0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->this$0:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->access$getFeedItem$p(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;)Lru/rocketbank/core/network/model/FeedItem;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;->$subscription:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lrx/Subscription;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
