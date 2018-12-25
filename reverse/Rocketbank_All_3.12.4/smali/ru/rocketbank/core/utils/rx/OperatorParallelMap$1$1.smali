.class Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$1;
.super Ljava/lang/Object;
.source "OperatorParallelMap.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$1;->this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$1;->this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

    iget-object v0, v0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$o:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    return-void
.end method
