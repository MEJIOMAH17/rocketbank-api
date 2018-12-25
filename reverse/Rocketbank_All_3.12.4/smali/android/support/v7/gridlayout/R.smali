.class public final Landroid/support/v7/gridlayout/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/gridlayout/R$styleable;,
        Landroid/support/v7/gridlayout/R$dimen;
    }
.end annotation


# instance fields
.field private final maxRetries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1025
    invoke-direct {p0, v0}, Landroid/support/v7/gridlayout/R;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput p1, p0, Landroid/support/v7/gridlayout/R;->maxRetries:I

    return-void
.end method
