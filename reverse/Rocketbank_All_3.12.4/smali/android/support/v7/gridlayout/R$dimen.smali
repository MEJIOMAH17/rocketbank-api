.class public final Landroid/support/v7/gridlayout/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/gridlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# instance fields
.field private final backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

.field private final retryCount:I

.field private final retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;


# direct methods
.method private constructor <init>(ILio/fabric/sdk/android/services/concurrency/internal/Backoff;Landroid/support/v7/gridlayout/R;)V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput p1, p0, Landroid/support/v7/gridlayout/R$dimen;->retryCount:I

    .line 1031
    iput-object p2, p0, Landroid/support/v7/gridlayout/R$dimen;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    .line 1032
    iput-object p3, p0, Landroid/support/v7/gridlayout/R$dimen;->retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;Landroid/support/v7/gridlayout/R;)V
    .locals 1

    const/4 v0, 0x0

    .line 1026
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/gridlayout/R$dimen;-><init>(ILio/fabric/sdk/android/services/concurrency/internal/Backoff;Landroid/support/v7/gridlayout/R;)V

    return-void
.end method


# virtual methods
.method public final getRetryDelay()J
    .locals 2

    .line 1040
    iget-object v0, p0, Landroid/support/v7/gridlayout/R$dimen;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    iget v1, p0, Landroid/support/v7/gridlayout/R$dimen;->retryCount:I

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/Backoff;->getDelayMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final initialRetryState$3053fe0c()Landroid/support/v7/gridlayout/R$dimen;
    .locals 3

    .line 1056
    new-instance v0, Landroid/support/v7/gridlayout/R$dimen;

    iget-object v1, p0, Landroid/support/v7/gridlayout/R$dimen;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    iget-object v2, p0, Landroid/support/v7/gridlayout/R$dimen;->retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/gridlayout/R$dimen;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;Landroid/support/v7/gridlayout/R;)V

    return-object v0
.end method

.method public final nextRetryState$3053fe0c()Landroid/support/v7/gridlayout/R$dimen;
    .locals 4

    .line 1052
    new-instance v0, Landroid/support/v7/gridlayout/R$dimen;

    iget v1, p0, Landroid/support/v7/gridlayout/R$dimen;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/support/v7/gridlayout/R$dimen;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    iget-object v3, p0, Landroid/support/v7/gridlayout/R$dimen;->retryPolicy$245149d8:Landroid/support/v7/gridlayout/R;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/gridlayout/R$dimen;-><init>(ILio/fabric/sdk/android/services/concurrency/internal/Backoff;Landroid/support/v7/gridlayout/R;)V

    return-object v0
.end method
