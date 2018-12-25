.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;
.source "AnalyticsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty$AnalyticsEmptyViewHolder;
    }
.end annotation


# instance fields
.field private final isJointAnalytics:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x2

    .line 200
    invoke-direct {p0, v1, v0, v2, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;->isJointAnalytics:Z

    return-void
.end method


# virtual methods
.method public final isJointAnalytics()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsEmpty;->isJointAnalytics:Z

    return v0
.end method
