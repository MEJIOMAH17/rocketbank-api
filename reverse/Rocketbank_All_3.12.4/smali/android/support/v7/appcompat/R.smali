.class public final Landroid/support/v7/appcompat/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/appcompat/R$styleable;,
        Landroid/support/v7/appcompat/R$style;,
        Landroid/support/v7/appcompat/R$string;,
        Landroid/support/v7/appcompat/R$layout;,
        Landroid/support/v7/appcompat/R$id;,
        Landroid/support/v7/appcompat/R$drawable;,
        Landroid/support/v7/appcompat/R$dimen;,
        Landroid/support/v7/appcompat/R$color;,
        Landroid/support/v7/appcompat/R$bool;,
        Landroid/support/v7/appcompat/R$attr;
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2039
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1046
    :cond_0
    iput-object p1, p0, Landroid/support/v7/appcompat/R;->field:Ljava/lang/reflect/Field;

    return-void
.end method
