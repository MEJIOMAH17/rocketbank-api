.class public final Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;
.super Ljava/lang/Object;
.source "MaterialDrawerFont.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/ITypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    }
.end annotation


# static fields
.field private static typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->valueOf(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    move-result-object p1

    return-object p1
.end method

.method public final getMappingPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "mdf"

    return-object v0
.end method

.method public final getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 100
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/materialdrawerfont.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    :goto_0
    sget-object p1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method
