.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->initClicks()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$setAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 268
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$updateOperation(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    return-void
.end method
