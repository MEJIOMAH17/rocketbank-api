.class public Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "PercentShiftSpan.java"


# instance fields
.field private _shift:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 10
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;->_shift:F

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 20
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;->_shift:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 15
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    iget v1, p0, Lru/rocketbank/r2d2/root/analytics/PercentShiftSpan;->_shift:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method
