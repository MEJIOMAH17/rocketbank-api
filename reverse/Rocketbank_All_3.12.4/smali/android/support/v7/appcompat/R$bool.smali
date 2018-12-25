.class public final Landroid/support/v7/appcompat/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# instance fields
.field public final maxX:D

.field public final maxY:D

.field public final midX:D

.field public final midY:D

.field public final minX:D

.field public final minY:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput-wide p1, p0, Landroid/support/v7/appcompat/R$bool;->minX:D

    .line 1034
    iput-wide p5, p0, Landroid/support/v7/appcompat/R$bool;->minY:D

    .line 1035
    iput-wide p3, p0, Landroid/support/v7/appcompat/R$bool;->maxX:D

    .line 1036
    iput-wide p7, p0, Landroid/support/v7/appcompat/R$bool;->maxY:D

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    .line 1038
    iput-wide p1, p0, Landroid/support/v7/appcompat/R$bool;->midX:D

    add-double/2addr p5, p7

    div-double/2addr p5, p3

    .line 1039
    iput-wide p5, p0, Landroid/support/v7/appcompat/R$bool;->midY:D

    return-void
.end method


# virtual methods
.method public final contains(DD)Z
    .locals 3

    .line 1043
    iget-wide v0, p0, Landroid/support/v7/appcompat/R$bool;->minX:D

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    iget-wide v0, p0, Landroid/support/v7/appcompat/R$bool;->maxX:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    iget-wide p1, p0, Landroid/support/v7/appcompat/R$bool;->minY:D

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    iget-wide p1, p0, Landroid/support/v7/appcompat/R$bool;->maxY:D

    cmpg-double v0, p3, p1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
