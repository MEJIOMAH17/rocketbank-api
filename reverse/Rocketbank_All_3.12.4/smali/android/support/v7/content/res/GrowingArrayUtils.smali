.class final Landroid/support/v7/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 59
    array-length v1, p0

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, p1, 0x1

    .line 60
    :goto_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 64
    :cond_1
    aput p2, p0, p1

    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 43
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 49
    :cond_1
    aput-object p2, p0, p1

    return-object p0
.end method
