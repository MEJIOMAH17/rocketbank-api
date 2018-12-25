.class final Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;
.super Ljava/lang/Object;
.source "IncomingOperation.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;-><init>(Landroid/content/Context;Lru/rocketbank/core/utils/MoneyFormatter;Landroid/view/View;)V
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

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;->access$getOperation$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation;)Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity;->Companion:Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingOperation$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/root/operation/AbstractDetailOperationActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/dto/operations/Operation;)V

    :cond_0
    return-void
.end method
