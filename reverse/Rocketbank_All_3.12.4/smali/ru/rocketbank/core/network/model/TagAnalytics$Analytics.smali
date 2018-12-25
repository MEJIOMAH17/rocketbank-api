.class public final Lru/rocketbank/core/network/model/TagAnalytics$Analytics;
.super Ljava/lang/Object;
.source "TagAnalytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/TagAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Analytics"
.end annotation


# instance fields
.field private tag:Lru/rocketbank/core/network/model/TagAnalytics$Tag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTag()Lru/rocketbank/core/network/model/TagAnalytics$Tag;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->tag:Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    return-object v0
.end method

.method public final setTag(Lru/rocketbank/core/network/model/TagAnalytics$Tag;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lru/rocketbank/core/network/model/TagAnalytics$Analytics;->tag:Lru/rocketbank/core/network/model/TagAnalytics$Tag;

    return-void
.end method
