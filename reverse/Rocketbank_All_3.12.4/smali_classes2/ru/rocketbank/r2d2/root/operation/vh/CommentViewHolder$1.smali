.class final Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;
.super Ljava/lang/Object;
.source "CommentViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;-><init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;->$holder:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getOperationPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$1;->$holder:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->scrollToPosition(I)V

    return-void
.end method
