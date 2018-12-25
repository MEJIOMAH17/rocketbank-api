.class public Lru/rocketbank/core/utils/format/FormatMoney$SeparatorInformation;
.super Ljava/lang/Object;
.source "FormatMoney.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/format/FormatMoney;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeparatorInformation"
.end annotation


# instance fields
.field public delimiter:Z

.field public grouping:I

.field public trimmedZerosAtStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
