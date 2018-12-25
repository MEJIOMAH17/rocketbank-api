.class final Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 15
    iput v0, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    .line 16
    iput-object p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .line 17
    new-instance p1, Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-direct {p1}, Lcom/crashlytics/android/core/MiddleOutStrategy;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    return-void
.end method


# virtual methods
.method public final getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    const/16 v0, 0x400

    .line 22
    array-length v1, p1

    if-gt v1, v0, :cond_0

    return-object p1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, p1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 28
    array-length v6, v4

    if-le v6, v0, :cond_1

    .line 32
    invoke-interface {v5, p1}, Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_1
    array-length p1, v4

    if-le p1, v0, :cond_2

    .line 36
    iget-object p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-virtual {p1, v4}, Lcom/crashlytics/android/core/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    :cond_2
    return-object v4
.end method
