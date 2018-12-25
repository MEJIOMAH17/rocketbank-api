.class public final Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
.super Ljava/lang/Object;
.source "DrawerImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;,
        Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$Tags;
    }
.end annotation


# static fields
.field private static SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;


# instance fields
.field private imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

.field private mHandleAllUris:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->mHandleAllUris:Z

    .line 24
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    return-void
.end method

.method public static getInstance()Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;
    .locals 2

    .line 33
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    new-instance v1, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$1;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;-><init>(Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;)V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    .line 37
    :cond_0
    sget-object v0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->SINGLETON:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;

    return-object v0
.end method


# virtual methods
.method public final setImage$15ce6e06(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "http"

    .line 53
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 54
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    if-eqz p2, :cond_2

    .line 55
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;->placeholder$36ecdf9d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader;->imageLoader:Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/util/DrawerImageLoader$IDrawerImageLoader;->set$29cb36a4()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
