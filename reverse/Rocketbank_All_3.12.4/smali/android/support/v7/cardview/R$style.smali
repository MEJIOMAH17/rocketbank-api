.class public final Landroid/support/v7/cardview/R$style;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/internal/Backoff;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# instance fields
.field private final baseTimeMillis:J

.field private final power:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 1035
    iput-wide v0, p0, Landroid/support/v7/cardview/R$style;->baseTimeMillis:J

    const/16 v0, 0x8

    .line 1036
    iput v0, p0, Landroid/support/v7/cardview/R$style;->power:I

    return-void
.end method


# virtual methods
.method public final getDelayMillis(I)J
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 1041
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method
