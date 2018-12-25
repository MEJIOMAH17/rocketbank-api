.class public final Lrx/internal/operators/OnSubscribeFromEmitter;
.super Ljava/lang/Object;
.source "OnSubscribeFromEmitter.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$ErrorEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$DropEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$NoneEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$BaseEmitter;,
        Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final Emitter:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/Emitter<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final backpressure:Lrx/Emitter$BackpressureMode;


# direct methods
.method public constructor <init>(Lrx/functions/Action1;Lrx/Emitter$BackpressureMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/Emitter<",
            "TT;>;>;",
            "Lrx/Emitter$BackpressureMode;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->Emitter:Lrx/functions/Action1;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->backpressure:Lrx/Emitter$BackpressureMode;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lrx/internal/operators/OnSubscribeFromEmitter$1;->$SwitchMap$rx$Emitter$BackpressureMode:[I

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->backpressure:Lrx/Emitter$BackpressureMode;

    invoke-virtual {v1}, Lrx/Emitter$BackpressureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeFromEmitter$BufferEmitter;-><init>(Lrx/Subscriber;I)V

    goto :goto_0

    .line 61
    :pswitch_0
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$LatestEmitter;-><init>(Lrx/Subscriber;)V

    goto :goto_0

    .line 57
    :pswitch_1
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$DropEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$DropEmitter;-><init>(Lrx/Subscriber;)V

    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$ErrorEmitter;-><init>(Lrx/Subscriber;)V

    goto :goto_0

    .line 49
    :pswitch_3
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$NoneEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoneEmitter;-><init>(Lrx/Subscriber;)V

    .line 70
    :goto_0
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 71
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 72
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeFromEmitter;->Emitter:Lrx/functions/Action1;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
