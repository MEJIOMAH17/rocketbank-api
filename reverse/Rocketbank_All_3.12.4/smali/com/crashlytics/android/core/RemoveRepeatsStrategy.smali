.class final Lcom/crashlytics/android/core/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source "RemoveRepeatsStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maxRepetitions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    return-void
.end method

.method private static isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z
    .locals 5

    sub-int v0, p2, p1

    add-int v1, p2, v0

    const/4 v2, 0x0

    .line 86
    array-length v3, p0

    if-le v1, v3, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v3, p1, v1

    .line 91
    aget-object v3, p0, v3

    add-int v4, p2, v1

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 11

    .line 29
    iget v0, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    .line 1047
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1050
    array-length v4, p1

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    move v5, v2

    move v6, v5

    move v7, v3

    .line 1054
    :goto_0
    array-length v8, p1

    if-ge v5, v8, :cond_3

    .line 1056
    aget-object v8, p1, v5

    .line 1057
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 1058
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p1, v10, v5}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 1065
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v9, v5, v9

    if-ge v7, v0, :cond_1

    .line 1067
    invoke-static {p1, v5, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v9

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v9, v9, -0x1

    add-int/2addr v9, v5

    goto :goto_2

    .line 1061
    :cond_2
    :goto_1
    aget-object v7, p1, v5

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    move v9, v5

    .line 1073
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v9, 0x1

    goto :goto_0

    .line 1077
    :cond_3
    new-array v0, v6, [Ljava/lang/StackTraceElement;

    .line 1078
    array-length v1, v0

    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method
