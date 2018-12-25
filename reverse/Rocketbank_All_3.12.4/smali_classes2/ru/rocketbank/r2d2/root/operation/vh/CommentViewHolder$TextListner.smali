.class public final Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;
.super Ljava/lang/Object;
.source "CommentViewHolder.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextListner"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 118
    iget-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->getViewData()Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/operation/vh/CommonOperationData;->setLastComment(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder$TextListner;->this$0:Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/CommentViewHolder;->handleTextChange()V

    return-void
.end method
