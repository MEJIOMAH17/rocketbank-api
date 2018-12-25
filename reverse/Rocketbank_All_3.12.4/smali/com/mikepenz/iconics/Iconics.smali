.class public final Lcom/mikepenz/iconics/Iconics;
.super Ljava/lang/Object;
.source "Iconics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/iconics/Iconics$IconicsBuilder;,
        Lcom/mikepenz/iconics/Iconics$IconicsBuilderString;
    }
.end annotation


# static fields
.field private static FONTS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;"
        }
    .end annotation
.end field

.field private static INIT_DONE:Z = false

.field public static final TAG:Ljava/lang/String; = "Iconics"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mikepenz/iconics/typeface/ITypeface;",
            ">;"
        }
    .end annotation

    .line 1053
    sget-boolean v0, Lcom/mikepenz/iconics/Iconics;->INIT_DONE:Z

    if-nez v0, :cond_1

    .line 1054
    invoke-static {p0}, Landroid/arch/lifecycle/MethodCallsLogger;->getFields(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 1055
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1057
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 1058
    sget-object v4, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/mikepenz/iconics/typeface/ITypeface;->getMappingPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "Android-Iconics"

    const-string v4, "Can\'t init: "

    .line 1060
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 1063
    sput-boolean p0, Lcom/mikepenz/iconics/Iconics;->INIT_DONE:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_3

    .line 77
    :cond_2
    sget-object p1, Lcom/mikepenz/iconics/Iconics;->FONTS:Ljava/util/HashMap;

    :cond_3
    return-object p1
.end method

.method public static style(Landroid/content/Context;Ljava/util/HashMap;Landroid/text/Spanned;Ljava/util/List;Ljava/util/HashMap;)Landroid/text/Spanned;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
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
            ">;>;)",
            "Landroid/text/Spanned;"
        }
    .end annotation

    .line 156
    invoke-static {p0, p1}, Lcom/mikepenz/iconics/Iconics;->init(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 159
    invoke-static {p2, p1}, Landroid/arch/lifecycle/MethodCallsLogger;->findIcons$1da7ef4d(Landroid/text/Spanned;Ljava/util/HashMap;)Landroid/support/v7/appcompat/R$drawable;

    move-result-object p1

    .line 162
    iget-object p2, p1, Landroid/support/v7/appcompat/R$drawable;->spannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p2

    .line 165
    iget-object p1, p1, Landroid/support/v7/appcompat/R$drawable;->styleContainers:Ljava/util/LinkedList;

    .line 1242
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/appcompat/R$dimen;

    .line 1243
    iget-object v1, v0, Landroid/support/v7/appcompat/R$dimen;->styleSpan:Landroid/text/style/StyleSpan;

    const/16 v2, 0x21

    if-eqz v1, :cond_1

    .line 1244
    iget-object v1, v0, Landroid/support/v7/appcompat/R$dimen;->styleSpan:Landroid/text/style/StyleSpan;

    iget v3, v0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    iget v4, v0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    invoke-interface {p2, v1, v3, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1246
    :cond_1
    new-instance v1, Lcom/mikepenz/iconics/utils/IconicsTypefaceSpan;

    const-string v3, "sans-serif"

    iget-object v4, v0, Landroid/support/v7/appcompat/R$dimen;->font:Lcom/mikepenz/iconics/typeface/ITypeface;

    invoke-interface {v4, p0}, Lcom/mikepenz/iconics/typeface/ITypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mikepenz/iconics/utils/IconicsTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iget v3, v0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    iget v4, v0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    invoke-interface {p2, v1, v3, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    if-eqz p4, :cond_2

    .line 1249
    iget-object v1, v0, Landroid/support/v7/appcompat/R$dimen;->icon:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1250
    iget-object v1, v0, Landroid/support/v7/appcompat/R$dimen;->icon:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/CharacterStyle;

    .line 1251
    invoke-static {v3}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v3

    iget v4, v0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    iget v5, v0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    invoke-interface {p2, v3, v4, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_0

    .line 1254
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/style/CharacterStyle;

    .line 1255
    invoke-static {v3}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v3

    iget v4, v0, Landroid/support/v7/appcompat/R$dimen;->startIndex:I

    iget v5, v0, Landroid/support/v7/appcompat/R$dimen;->endIndex:I

    invoke-interface {p2, v3, v4, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    return-object p2
.end method
