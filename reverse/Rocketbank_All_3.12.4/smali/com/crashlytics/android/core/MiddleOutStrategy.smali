.class final Lcom/crashlytics/android/core/MiddleOutStrategy;
.super Ljava/lang/Object;
.source "MiddleOutStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final trimmedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 16
    iput v0, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    return-void
.end method


# virtual methods
.method public final getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 3

    const/16 v0, 0x400

    .line 21
    array-length v1, p1

    if-gt v1, v0, :cond_0

    return-object p1

    .line 29
    :cond_0
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    const/16 v2, 0x200

    .line 30
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v1, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
