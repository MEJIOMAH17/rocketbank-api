.class final Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field private static final mInstance:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;-><init>(B)V

    sput-object v0, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;->mInstance:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker$Singleton;->mInstance:Lcom/samsung/android/sdk/samsungpay/v2/RequestTracker;

    return-object v0
.end method
