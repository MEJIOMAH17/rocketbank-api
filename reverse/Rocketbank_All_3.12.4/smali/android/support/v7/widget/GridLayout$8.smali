.class final Landroid/support/v7/widget/GridLayout$8;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2900
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    const/high16 p1, -0x80000000

    return p1
.end method

.method final getDebugString()Ljava/lang/String;
    .locals 1

    const-string v0, "FILL"

    return-object v0
.end method

.method final getGravityOffset(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getSizeInCell(Landroid/view/View;II)I
    .locals 0

    return p3
.end method
