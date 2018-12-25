.class final Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;
.super Ljava/lang/Object;
.source "IncomingViewHolder.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->getPermalimk()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 38
    sget-object p1, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->Companion:Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;->getPermalimk()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
