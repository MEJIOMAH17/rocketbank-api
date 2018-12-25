.class final Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;
.super Ljava/lang/Object;
.source "DiscountDetailsActivity.kt"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->changeToolbar(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscountDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountDetailsActivity.kt\nru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1\n*L\n1#1,225:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 2

    const-string v0, "palette"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    const/high16 v1, -0x1000000

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {v0, p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$setToolbarBackground$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;I)V

    .line 178
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getToolbarBackground$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    const v0, 0xddbddd

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 183
    :goto_1
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getToolbar$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 184
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getArrow$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 185
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getToolbar$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity$changeToolbar$1;->this$0:Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;->access$getArrow$p(Lru/rocketbank/r2d2/activities/DiscountDetailsActivity;)Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
