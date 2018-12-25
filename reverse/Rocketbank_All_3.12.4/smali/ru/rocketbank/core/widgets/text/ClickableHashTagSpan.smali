.class public abstract Lru/rocketbank/core/widgets/text/ClickableHashTagSpan;
.super Landroid/text/style/ClickableSpan;
.source "ClickableHashTagSpan.java"


# instance fields
.field private color:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 10
    iput p1, p0, Lru/rocketbank/core/widgets/text/ClickableHashTagSpan;->color:I

    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/view/View;)V
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 23
    iget v0, p0, Lru/rocketbank/core/widgets/text/ClickableHashTagSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
