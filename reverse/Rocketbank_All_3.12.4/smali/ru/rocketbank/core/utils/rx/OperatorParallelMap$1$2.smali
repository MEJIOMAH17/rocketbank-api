.class Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;
.super Ljava/lang/Object;
.source "OperatorParallelMap.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;->this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

    iput-object p2, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 41
    iget-object v0, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;->this$1:Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;

    iget-object v0, v0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1;->val$o:Lrx/Subscriber;

    iget-object v1, p0, Lru/rocketbank/core/utils/rx/OperatorParallelMap$1$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
