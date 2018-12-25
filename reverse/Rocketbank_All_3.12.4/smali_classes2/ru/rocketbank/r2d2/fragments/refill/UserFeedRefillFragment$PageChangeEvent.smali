.class Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;
.super Ljava/lang/Object;
.source "UserFeedRefillFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageChangeEvent"
.end annotation


# instance fields
.field public final position:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;->position:I

    return-void
.end method

.method synthetic constructor <init>(ILru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/refill/UserFeedRefillFragment$PageChangeEvent;-><init>(I)V

    return-void
.end method
