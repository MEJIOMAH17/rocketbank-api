.class public final Lru/rocketbank/core/utils/presenter/EventNotifier;
.super Ljava/lang/Object;
.source "EventNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private requestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lru/rocketbank/core/utils/presenter/EventNotifier;->requestHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getRequestHandler()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object<",
            "TT;>;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lru/rocketbank/core/utils/presenter/EventNotifier;->requestHandler:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final setRequestHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lru/rocketbank/core/utils/presenter/EventNotifier;->requestHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method
