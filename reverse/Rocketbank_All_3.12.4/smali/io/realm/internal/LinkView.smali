.class public Lio/realm/internal/LinkView;
.super Ljava/lang/Object;
.source "LinkView.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field final columnIndexInParent:J

.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field final parent:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lio/realm/internal/LinkView;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/LinkView;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;JJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/realm/internal/LinkView;->context:Lio/realm/internal/NativeContext;

    .line 35
    iput-object p2, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    .line 36
    iput-wide p3, p0, Lio/realm/internal/LinkView;->columnIndexInParent:J

    .line 37
    iput-wide p5, p0, Lio/realm/internal/LinkView;->nativePtr:J

    .line 39
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    return-void
.end method

.method public static native nativeAdd(JJ)V
.end method

.method public static native nativeClear(J)V
.end method

.method private native nativeFind(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private native nativeGetTargetRowIndex(JJ)J
.end method

.method private native nativeGetTargetTable(J)J
.end method

.method private native nativeInsert(JJJ)V
.end method

.method private native nativeIsAttached(J)Z
.end method

.method private native nativeIsEmpty(J)Z
.end method

.method private native nativeMove(JJJ)V
.end method

.method private native nativeRemove(JJ)V
.end method

.method private native nativeRemoveAllTargetRows(J)V
.end method

.method private native nativeRemoveTargetRow(JJ)V
.end method

.method private native nativeSet(JJJ)V
.end method

.method private native nativeSize(J)J
.end method


# virtual methods
.method public final add(J)V
    .locals 2

    .line 1159
    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    return-void
.end method

.method public final clear()V
    .locals 2

    .line 5159
    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/LinkView;->nativeClear(J)V

    return-void
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 50
    sget-wide v0, Lio/realm/internal/LinkView;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    return-wide v0
.end method

.method public final getTargetRowIndex(J)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeGetTargetRowIndex(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getTargetTable()Lio/realm/internal/Table;
    .locals 4

    .line 154
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeGetTargetTable(J)J

    move-result-wide v0

    .line 155
    new-instance v2, Lio/realm/internal/Table;

    iget-object v3, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method public final insert(JJ)V
    .locals 7

    .line 2159
    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_0
    iget-wide v1, p0, Lio/realm/internal/LinkView;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/LinkView;->nativeInsert(JJJ)V

    return-void
.end method

.method public final isAttached()Z
    .locals 2

    .line 134
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeIsAttached(J)Z

    move-result v0

    return v0
.end method

.method native nativeGetRow(JJ)J
.end method

.method protected native nativeWhere(J)J
.end method

.method public final remove(J)V
    .locals 2

    .line 4159
    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/realm/internal/LinkView;->nativeRemove(JJ)V

    return-void
.end method

.method public final set(JJ)V
    .locals 7

    .line 3159
    iget-object v0, p0, Lio/realm/internal/LinkView;->parent:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Changing Realm data can only be done from inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_0
    iget-wide v1, p0, Lio/realm/internal/LinkView;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/LinkView;->nativeSet(JJJ)V

    return-void
.end method

.method public final size()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lio/realm/internal/LinkView;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/LinkView;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method
