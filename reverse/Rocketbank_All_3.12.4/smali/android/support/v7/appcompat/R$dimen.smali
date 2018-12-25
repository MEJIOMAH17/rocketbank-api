.class public final Landroid/support/v7/appcompat/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/appcompat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# instance fields
.field public endIndex:I

.field public font:Lcom/mikepenz/iconics/typeface/ITypeface;

.field public icon:Ljava/lang/String;

.field public startIndex:I

.field public styleSpan:Landroid/text/style/StyleSpan;


# direct methods
.method public constructor <init>(IILandroid/text/style/StyleSpan;)V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput p1, p0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    .line 1023
    iput p2, p0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    .line 1024
    iput-object p3, p0, Landroid/support/v7/appcompat/R$dimen;->styleSpan:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/mikepenz/iconics/typeface/ITypeface;)V
    .locals 0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput p1, p0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    .line 1016
    iput p2, p0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    .line 1017
    iput-object p3, p0, Landroid/support/v7/appcompat/R$dimen;->icon:Ljava/lang/String;

    .line 1018
    iput-object p4, p0, Landroid/support/v7/appcompat/R$dimen;->font:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-void
.end method
