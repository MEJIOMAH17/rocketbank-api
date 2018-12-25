.class public Lru/rocketbank/core/model/discounts/Gamer$GamerMerchant;
.super Ljava/lang/Object;
.source "Gamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/discounts/Gamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamerMerchant"
.end annotation


# instance fields
.field public android:Ljava/lang/String;

.field public coolBig:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cool_big"
    .end annotation
.end field

.field public iphoneBig:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iphone_big"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
