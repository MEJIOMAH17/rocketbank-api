.class public final Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
.super Ljava/lang/Object;
.source "Iconics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/iconics/Iconics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconicsBuilder"
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

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private stylesFor:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    .line 269
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ctx(Landroid/content/Context;)Lcom/mikepenz/iconics/Iconics$IconicsBuilder;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method public final on(Ljava/lang/CharSequence;)Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    .locals 6

    .line 358
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1348
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2338
    new-instance p1, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;

    iget-object v1, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->fonts:Ljava/util/List;

    iget-object v4, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->styles:Ljava/util/List;

    iget-object v5, p0, Lcom/mikepenz/iconics/Iconics$IconicsBuilder;->stylesFor:Ljava/util/HashMap;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)V

    return-object p1
.end method
