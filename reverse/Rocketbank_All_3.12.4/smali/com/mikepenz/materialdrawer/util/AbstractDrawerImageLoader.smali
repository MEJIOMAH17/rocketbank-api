.class public abstract Lcom/mikepenz/materialdrawer/util/AbstractDrawerImageLoader;
.super Ljava/lang/Object;
.source "AbstractDrawerImageLoader.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final placeholder$36ecdf9d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1139
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    invoke-virtual {v0}, Lcom/mikepenz/iconics/IconicsDrawable;->colorRes$236e4172()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColorRes$236e4172()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/16 v0, 0x38

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public final set$29cb36a4()V
    .locals 2

    const-string v0, "MaterialDrawer"

    const-string v1, "you have not specified a ImageLoader implementation through the DrawerImageLoader.init(IDrawerImageLoader) method"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
