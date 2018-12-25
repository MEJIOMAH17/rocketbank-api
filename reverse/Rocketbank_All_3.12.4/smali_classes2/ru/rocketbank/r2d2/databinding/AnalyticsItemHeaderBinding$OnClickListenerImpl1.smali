.class public Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;
.super Ljava/lang/Object;
.source "AnalyticsItemHeaderBinding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl1"
.end annotation


# instance fields
.field private value:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->onDateClick(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;)Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;
    .locals 0

    .line 266
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p0
.end method
