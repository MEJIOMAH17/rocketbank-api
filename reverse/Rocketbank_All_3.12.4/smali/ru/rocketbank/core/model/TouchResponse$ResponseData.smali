.class public Lru/rocketbank/core/model/TouchResponse$ResponseData;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/TouchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseData"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public show_it:Z

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
