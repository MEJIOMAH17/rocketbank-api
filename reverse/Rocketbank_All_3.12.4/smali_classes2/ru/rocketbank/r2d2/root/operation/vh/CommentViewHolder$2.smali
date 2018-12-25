.class final Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;
.super Ljava/lang/Object;
.source "CommentViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;->$holder:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getOperationPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$2;->$holder:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
