.class final Landroid/support/v7/widget/GridLayout$6;
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

    .line 2815
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlignmentValue(Landroid/view/View;II)I
    .locals 0

    shr-int/lit8 p1, p2, 0x1

    return p1
.end method

.method final getDebugString()Ljava/lang/String;
    .locals 1

    const-string v0, "CENTER"

    return-object v0
.end method

.method final getGravityOffset(Landroid/view/View;I)I
    .locals 0

    shr-int/lit8 p1, p2, 0x1

    return p1
.end method
