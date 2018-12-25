.class public final Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
.super Ljava/lang/Object;
.source "Iconics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/Iconics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconicsBuilderString"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;"
        }
    .end annotation
.end field

.field private text:Landroid/text/Spanned;

.field private withStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private withStylesFor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;",
            "Landroid/text/Spanned;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;>;)V"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->ctx:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->fonts:Ljava/util/List;

    .line 211
    iput-object p3, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->text:Landroid/text/Spanned;

    .line 212
    iput-object p4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->withStyles:Ljava/util/List;

    .line 213
    iput-object p5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->withStylesFor:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final build()Landroid/text/Spanned;
    .locals 5

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->fonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 219
    invoke-interface {v2}, Lcom/mikepenz/iconics/typeface/ITypeface;->getMappingPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->text:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->withStyles:Ljava/util/List;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;->withStylesFor:Ljava/util/HashMap;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mikepenz/iconics/Iconics;->style(Landroid/content/Context;Ljava/util/HashMap;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
