.class final Lru/rocketbank/r2d2/helpers/UIHelper$5;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->colorizeToolbar(Landroid/support/v7/widget/Toolbar;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field final synthetic val$finalK:I

.field final synthetic val$innerView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$innerView:Landroid/view/View;

    iput p2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$finalK:I

    iput-object p3, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$innerView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$finalK:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$5;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
