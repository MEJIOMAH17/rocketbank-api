.class final Landroid/support/v7/widget/GridLayout$Arc;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Arc"
.end annotation


# instance fields
.field public final span:Landroid/support/v7/widget/GridLayout$Interval;

.field public valid:Z

.field public final value:Landroid/support/v7/widget/GridLayout$MutableInt;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$MutableInt;)V
    .locals 1

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2119
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    .line 2122
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 2123
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Arc;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Arc;->valid:Z

    if-nez v1, :cond_0

    const-string v1, "+>"

    goto :goto_0

    :cond_0
    const-string v1, "->"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Arc;->value:Landroid/support/v7/widget/GridLayout$MutableInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
