.class final Lrx/internal/util/RxRingBuffer$2;
.super Lrx/internal/util/ObjectPool;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/RxRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool<",
        "Ljava/util/Queue<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer$2;->createObject()Lrx/internal/util/unsafe/SpmcArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method protected final createObject()Lrx/internal/util/unsafe/SpmcArrayQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/unsafe/SpmcArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Lrx/internal/util/unsafe/SpmcArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;-><init>(I)V

    return-object v0
.end method
