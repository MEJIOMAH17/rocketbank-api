.class public final Lio/realm/internal/NativeContext;
.super Ljava/lang/Object;
.source "NativeContext.java"


# static fields
.field static final dummyContext:Lio/realm/internal/NativeContext;

.field private static final finalizingThread:Ljava/lang/Thread;

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/realm/internal/NativeContext;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 31
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/realm/internal/FinalizerRunnable;

    sget-object v2, Lio/realm/internal/NativeContext;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2}, Lio/realm/internal/FinalizerRunnable;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lio/realm/internal/NativeContext;->finalizingThread:Ljava/lang/Thread;

    .line 33
    new-instance v0, Lio/realm/internal/NativeContext;

    invoke-direct {v0}, Lio/realm/internal/NativeContext;-><init>()V

    sput-object v0, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    .line 36
    sget-object v0, Lio/realm/internal/NativeContext;->finalizingThread:Ljava/lang/Thread;

    const-string v1, "RealmFinalizingDaemon"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lio/realm/internal/NativeContext;->finalizingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addReference(Lio/realm/internal/NativeObject;)V
    .locals 2

    .line 41
    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lio/realm/internal/NativeContext;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
