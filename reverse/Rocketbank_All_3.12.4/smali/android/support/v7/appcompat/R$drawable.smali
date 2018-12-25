.class public final Landroid/support/v7/appcompat/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# instance fields
.field public spannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field public styleContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/support/v7/appcompat/R$dimen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/SpannableStringBuilder;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/LinkedList<",
            "Landroid/support/v7/appcompat/R$dimen;",
            ">;)V"
        }
    .end annotation

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Landroid/support/v7/appcompat/R$drawable;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1013
    iput-object p2, p0, Landroid/support/v7/appcompat/R$drawable;->styleContainers:Ljava/util/LinkedList;

    return-void
.end method
