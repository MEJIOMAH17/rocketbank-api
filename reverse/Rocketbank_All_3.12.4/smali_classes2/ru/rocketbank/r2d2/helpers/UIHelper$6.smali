.class final Lru/rocketbank/r2d2/helpers/UIHelper$6;
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

.field final synthetic val$innerView:Landroid/view/View;

.field final synthetic val$toolbarIconsColor:I


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$innerView:Landroid/view/View;

    iput p2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$toolbarIconsColor:I

    iput-object p3, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 211
    iget-object v0, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$innerView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iget v1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$toolbarIconsColor:I

    iget-object v2, p0, Lru/rocketbank/r2d2/helpers/UIHelper$6;->val$colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/helpers/UIHelper;->access$100(Landroid/view/ViewGroup;ILandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method
